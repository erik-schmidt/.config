Vim�UnDo�  �R�Y�OSL����U�啸ƳB�T�r@�      vim.api.nvim_set_keymap)()            /       /   /   /    `���    _�                            ����                                                                                                                                                                                                                                                                                                                                                             `���     �                �             5��                          -                      �                          -                      �                          .                      �                         .                     �                         .                     �                         .                     �                        4                     �                        4                     �                        4                     �                     	   4              	       �                        ;                     �                        ;                     �                        ;                     �                     	   ;              	       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `���     �               local term = require()5��                         C                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `���     �               local term = require("")5��                         D                      �                        D                     �                        J                     �                        J                     �                        J                     5�_�                       &    ����                                                                                                                                                                                                                                                                                                                                                             `���     �               &local term = require("FTerm.terminal")5��       &                  T                      �                          U                      �                          V                      �                         V                     �                         V                     �                         V                     �                         V                     �                        \                     �                        \                     �                        \                     �                        \                     �                        \                     �                        f                     �                        f                     �                        f                     �                        k                     �                        k                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `���     �         
      local lazygit = term:new/()5��                        n                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `���     �         
      local lazygit = term:new()5��                         p                      �                        q                     �                        q                     �                        q                     5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                             `���     �         
      "local lazygit = term:new():setup()5��       !                  w                      5�_�      	                 "    ����                                                                                                                                                                                                                                                                                                                                                             `���     �      	         	�      	       �      	   
      $local lazygit = term:new():setup({})5��       "                  x                      �                          y                      �                          y                      �                        z                     �                        z                     5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             `���     �      	         		cmd = ""5��                         �                      �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             `���     �      	         	cmd = "lazygit"5��                         �                      �                        �                      �                          �                      �                         �                      5�_�   
                 	       ����                                                                                                                                                                                                                                                                                                                                                             `���     �   	             �   	          5��    	                      �                      �    	                      �                      �    
                      �                      �    
                     �                     �    
                     �                     �    
                    �                     �    
                    �                     �    
                    �                     �    
                    �                     �    
                    �                     �    
                    �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `���     �   
            vim.api.nvim()5��    
                    �                     �    
                    �                     �    
                    �                     �    
                 	   �              	       �    
          	       
   �       	       
       �    
          
       
   �       
       
       �    
          
          �       
              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `���     �   
            vim.api.nvim_set_keymap()5��    
                     �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `���     �   
            vim.api.nvim_set_keymap('')5��    
                     �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `���     �   
            vim.api.nvim_set_keymap('n')5��    
                     �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `���     �   
             vim.api.nvim_set_keymap('n', '')5��    
                     �                      �    
                    �                     5�_�                       $    ����                                                                                                                                                                                                                                                                                                                                                             `���     �   
            %vim.api.nvim_set_keymap('n', '<A-g>')5��    
   $                  �                      �    
   '                 �                     �    
   '                 �                     �    
   &                 �                     5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             `��     �   
            )vim.api.nvim_set_keymap('n', '<A-g>', '')5��    
   '                  �                      �    
   '                  �                      5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             `��     �   	             �   	          5��    	                      �                      �    	                      �                      �    
                      �                      �    
                     �                     �    
                     �                     �    
                     �                     �    
                     �                     �    
                     �                     �    
                     �                     �    
                  
   �              
       �    
   	                 �                     �    
   	                 �                     �    
                    �                     �    
                    �                     �    
                    �                     �    
                    �                     �    
                    �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `��)     �   
            function _G.__fterm_lg()5��    
                     �                      �                          �                      �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �       	                 �                     �       	                 �                     �       	                 �                     �       	                 �                     �       	                 �                     �       	                 �                     �                        �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `��2     �               	lazygit:toggle()5��                        �                      �                         �                      �                        �                     �                        �                     �                          �                      5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             `��:     �               )vim.api.nvim_set_keymap('n', '<A-g>', '')5��       '                  �                      �       (                 �                     �       (                 �                     �       '                 �                     �       '                 �                     �       '                 �                     �       '                  �                      5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             `���     �               )vim.api.nvim_set_keymap('n', '<A-g>', '')5��       '                  �                      �       '                 �                     �       '                 �                     �       '                 �                     �       (                 �                     �       (                 �                     �       (                 �                     �       ,                 �                     �       ,                 �                     �       1                 �                     �       3                 �                     �       3                 �                     �       3                 �                     �       3                 �                     �       3                 �                     �       3                 �                     �       3                 �                     �       3                 �                     5�_�                       @    ����                                                                                                                                                                                                                                                                                                                                                             `���     �               Avim.api.nvim_set_keymap('n', '<A-g>', '<cmd>lua _G.__fterm_lg()')5��       @                  �                      �       A                                        �       @                  �                      5�_�                       ?    ����                                                                                                                                                                                                                                                                                                                                                             `���     �               Avim.api.nvim_set_keymap('n', '<A-g>', '<cmd>lua _G.__fterm_lg()')5��       ?                  �                      �       @                 �                     5�_�                       D    ����                                                                                                                                                                                                                                                                                                                                                             `���     �               Evim.api.nvim_set_keymap('n', '<A-g>', '<cmd>lua _G.__fterm_lg()<cr>')5��       D                                       5�_�                       G    ����                                                                                                                                                                                                                                                                                                                                                             `���    �               Ivim.api.nvim_set_keymap('n', '<A-g>', '<cmd>lua _G.__fterm_lg()<cr>', {})5��       G                                       �       H                                     �       H                                     �       H                                     �       H                                     �       R                                     �       R                                     �       R                                     �       V                                     �       X                                     �       X                                     �       X                                     �       X                                     �       X                                     �       a                                      �       a                                      �       a                                      5�_�                      '    ����                                                                                                                                                                                                                                                                                                                                                             `���     �                gvim.api.nvim_set_keymap('n', '<A-g>', '<cmd>lua _G.__fterm_lg()<cr>', { noremap = true, silent = true})5��                          �       h               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `���    �                 5��                          �                      5�_�                             ����                                                                                                                                                                                                                                                                                                                                                  V        `���    �             
       &local term = require("FTerm.terminal")       "local lazygit = term:new():setup({   	cmd = "lazygit",   })       function _G.__fterm_lg()   	lazygit:toggle()   end5��           
               -       �               5�_�      !                       ����                                                                                                                                                                                                                                                                                                                                                  V        `���    �                qvim.api.nvim_set_keymap('t', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true})�                qvim.api.nvim_set_keymap('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true})5��               q       t   .       q       t       �               q       t   �       q       t       5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                  V        `���     �                t-- vim.api.nvim_set_keymap('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true})   t-- vim.api.nvim_set_keymap('t', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true})5��                          .       �               5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                  V        `���    �                 5��                          -                      5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                                                             `���     �                  �               5��                          -                      �                          -                      �                          .                      �                         .                     �                         .                     �                        2                     �                        2                     �                        6                     �                        6                     �                        6                     �                        6                     �                        6                     �                        6                     �                        6                     �                     	   6              	       �              	       
   6       	       
       �              
          6       
              �                        6                     �                        6                     �                        6                     5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                                             `���     �                 vim.api.nvim_set_keymap)()5��                        E                     5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                             `���     �                 vim.api.nvim_set_keymap()5��                         F                      5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                             `���     �                 vim.api.nvim_set_keymap('')5��                         G                      5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                                             `���     �                 vim.api.nvim_set_keymap('t')5��                         I                      �                        K                     5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                             `���     �                  vim.api.nvim_set_keymap('t', '')5��                         L                      �                        M                     �                        M                     �                        M                     �       !                 O                     5�_�   (   *           )      $    ����                                                                                                                                                                                                                                                                                                                                                             `���     �                 %vim.api.nvim_set_keymap('t', '<C-o>')5��       $                  R                      5�_�   )   +           *      "    ����                                                                                                                                                                                                                                                                                                                                                             `���     �                 'vim.api.nvim_set_keymap('t', '<C-o>', )5��       !                 O                     �       !                 O                     5�_�   *   ,           +      &    ����                                                                                                                                                                                                                                                                                                                                                             `���     �                 'vim.api.nvim_set_keymap('t', '<C-O>', )5��       &                  T                      �       &                 T                     5�_�   +   -           ,      '    ����                                                                                                                                                                                                                                                                                                                                                             `���     �                 )vim.api.nvim_set_keymap('t', '<C-O>', '')5��       '                  U                      �       (              	   V              	       �       .                 \                     �       /                 ]                     �       3                 a                     �       3                 a                     �       7                 e                     �       7                 e                     �       ;                 i                     �       ;                 i                     �       ;                 i                     �       ;              
   i              
       �       D              	   r              	       �       L                 z                     �       L                 z                     �       L                 z                     �       L                 z                     �       L                 z                     �       L                 z                     �       U                 �                     5�_�   ,   .           -      Y    ����                                                                                                                                                                                                                                                                                                                                                             `���     �                 Zvim.api.nvim_set_keymap('t', '<C-O>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')5��       Y                  �                      5�_�   -   /           .      \    ����                                                                                                                                                                                                                                                                                                                                                             `���    �                 ^vim.api.nvim_set_keymap('t', '<C-O>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', {})5��       \                  �                      �       ]                 �                     �       ]                 �                     �       ]                 �                     �       ]                 �                     �       g                 �                     �       g                 �                     �       g                 �                     �       l                 �                     �       m                 �                     �       m                 �                     �       m                 �                     �       m                 �                     �       m                 �                     �       v                 �                     �       v                 �                     �       v                 �                     5�_�   .               /      !    ����                                                                                                                                                                                                                                                                                                                                                             `���    �                 |vim.api.nvim_set_keymap('t', '<C-O>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true})5��       !                 O                     5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             `���    �               hvim.api.nvim_set_keymap('n', '<A-g>', '<cmd>lua lazygit:toggle()<cr>', { noremap = true, silent = true})5��       '                 �                     �       (                 �                     �       (                 �                     �       ,                 �                     �       ,                 �                     �       0                 �                     �       0                 �                     �       0                 �                     �       0              
   �              
       �       8                 �                     �       8                 �                     �       8                 �                     �       8                 �                     �       8                 �                     �       8                 �                     �       >                 �                     �       A                                      �       A                                      �       C                                     5��