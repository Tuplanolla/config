alias gf=fg

alias title='STORED_PROMPT_COMMAND="$PROMPT_COMMAND" && \
PROMPT_COMMAND= && \
title'

alias untitle='PROMPT_COMMAND="$STORED_PROMPT_COMMAND" && \
unset STORED_PROMPT_COMMAND'
