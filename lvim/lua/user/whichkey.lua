
lvim.builtin.which_key.mappings["l"]["R"] = { "<cmd>LspRestart<cr>", "Restart" }

lvim.builtin.which_key.mappings["n"] = {
    name = "Neorg",
    w = { "<cmd>Neorg index<cr>", "Go to Index" },
    r = { "<cmd>Neorg return<cr>", "Return from Neorg" },
    t = { "<cmd>Neorg toggle-concealer<cr>", "Toggle Concealer" },
}

lvim.builtin.which_key.mappings[" "] = {
    name = "Easy Motions",
    a = { "<Plug>(easymotion-jumptoanywhere)", "Jump anywhere" },
    w = { "<Plug>(easymotion-w)", "Jump forward to word" },
    e = { "<Plug>(easymotion-e)", "Jump forward to end of word" },
    b = { "<Plug>(easymotion-b)", "Jump backward to word" },
    W = { "<Plug>(easymotion-bd-w)", "Jump to word" },
    f = { "<Plug>(easymotion-f)", "Find {char} forward" },
    s = { "<Plug>(easymotion-s)", "Find {char} anywhere" },
    k = { "<Plug>(easymotion-k)", "Jump up line" },
    j = { "<Plug>(easymotion-j)", "Jump down line" },
    L = { "<Plug>(easymotion-bd-jk)", "Jump line" },
}

lvim.builtin.which_key.mappings["b"] = {
    name = "Buffer",
    v = { "<cmd>vsplit<cr><cmd>Ex<cr>", "Vertical Split" },
    s = { "<cmd>split<cr><cmd>Ex<cr>", "Horizontal Split" },
    n = { "<cmd>BufferNext<cr>", "Next Buffer" },
    N = { "<cmd>BufferPrevious<cr>", "Previous Buffer" },
    b = { "<Cmd>BufferOrderByBufferNumber<CR>", "Order Buffers by Number" },
    d = { "<Cmd>BufferOrderByDirectory<CR>", "Order Buffers by Directory" },
    l = { "<Cmd>BufferOrderByLanguage<CR>", "Order Buffers by Language" },
    w = { "<Cmd>BufferOrderByWindowNumber<CR>", "Order Buffers by Window Number" },
}

lvim.builtin.which_key.mappings["x"] = { "<cmd>!chmod +x %<cr>", "Make Executable" }
