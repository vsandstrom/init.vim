lua << EOF

	require 'faust-vim'.setup()

	require 'snippets'.snippets["faust"] = require 'faust-nvim/snippets'

EOF
