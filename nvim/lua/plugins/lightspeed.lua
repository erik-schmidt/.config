require'lightspeed'.setup{
    jump_tp_first_match = true,
    jump_on_partial_input_safety_timeout = 400,
    highlight_unique_chars = false,
    grey_out_search_area = true,
    match_only_the_start_of_same_char_seqs = true,
    limit_ft_matches = 5,
    full_inclusive_prefix_key = '<C-x>',
}
