const { query } = require("../database/Db");

const getNotes = async (req, res) => {
  try {
    const result = await query("SELECT * FROM notes");
    return res.status(200).json({ data: result });
  } catch (error) {
    console.log(error);
    return res.status(500).json({ error: "Internal Server Error" });
  }
};

const getNoteById = async (req, res) => {
  const { id } = req.params;
  try {
    const result = await query("SELECT * FROM notes WHERE id = ?", [id]);
    return res.status(200).json({ data: result });
  } catch (error) {
    return res.status(400).json({ message: "Something went wrong", error });
  }
};

const addNote = async (req, res) => {
  const { title, datetime, note } = req.body;
  try {
    await query("INSERT INTO notes (title, datetime, note) VALUES(?, ?, ?)", [title, datetime, note]);
    return res.status(200).json({
      message: "Note added successfully",
      data: { title, datetime, note }
    });
  } catch (error) {
    console.log(error);
    return res.status(500).json({ error: "Internal Server Error" });
  }
};

const updateNote = async (req, res) => {
  const { title, datetime, note } = req.body;
  const { id } = req.params;
  try {
    await query("UPDATE notes SET title = ?, datetime = ?, note = ? WHERE id = ?", [title, datetime, note, id]);
    return res.status(200).json({
      message: "Note updated successfully",
      data: { title, datetime, note }
    });
  } catch (error) {
    console.log(error);
    return res.status(500).json({ error: "Internal Server Error" });
  }
};

const deleteNote = async (req, res) => {
  const { id } = req.params;
  try {
    await query("DELETE FROM notes WHERE id = ?", [id]);
    return res.status(200).json({
      message: "Note deleted successfully"
    });
  } catch (error) {
    console.log(error);
    return res.status(500).json({ error: "Internal Server Error" });
  }
};

module.exports = {
  getNotes,
  getNoteById,
  addNote,
  updateNote,
  deleteNote,
};
