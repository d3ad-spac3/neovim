local wk = require("which-key")

wk.register({
	e = { "File Manager" },
	w = { "Save" },
	q = { "Quit" },
	h = { "No highlight" },
	f = { "Format document" },
	b = { name = "Buffer Line", e = "Pick close", j = "Pick jump", c = "Close all" },
	d = {
		name = "Debug",
		b = "Toggle breakpoint",
		s = "Continue",
		i = "Step into",
		o = "Step over",
		u = "Toggle UI",
		q = "Terminate session",
	},
	g = {
		name = "Git",
		r = "Reset hunk",
		R = "Reset buffer",
		s = "Stage hunk",
		S = "Stage buffer",
		u = "Undo stage hunk",
		p = "Preview hunk",
		d = "Diff",
	},
	gp = { "Generate docstring" },
	gd = { "LSP go to definition" },
	gD = { "LSP go to declaration" },
	gr = { "LSP buffer references" },
	l = {
		name = "LSP",
		d = "Float diagnostic",
		D = "Hover diagnostic",
		f = "Format",
		r = "Rename",
		a = "Code action",
		s = "Symbol",
	},
}, { prefix = "<leader>" })