const express = require("express");
const { getNotes, getNoteById, addNote, updateNote, deleteNote } = require("../controller/notesController");
const router = express.Router();

router.get("/notes", getNotes);
router.get("/notes/:id", getNoteById);
router.post("/notes", addNote);
router.put("/notes/:id", updateNote);
router.delete("/notes/:id", deleteNote);

module.exports = router;
