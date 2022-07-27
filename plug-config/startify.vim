let g:startify_lists = [
	  \ { 'type': 'files',     'header': ['   MRU']            },
	  \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
	  \ { 'type': 'sessions',  'header': ['   Sessions']       },
	  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
	  \ { 'type': 'commands',  'header': ['   Commands']       },
	  \ ]

let g:startify_bookmarks = systemlist("cut -sd' ' -f 2- ~/.NERDTreeBookmarks")
