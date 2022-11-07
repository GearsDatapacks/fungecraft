data modify storage fungecraft:main OutLines append value []

function fungecraft:io/format_output

data modify storage fungecraft:main Current set from storage fungecraft:main OutLines
data modify storage fungecraft:main OutLines set value []
function fungecraft:util/reverse_lines

function fungecraft:io/print_lines
