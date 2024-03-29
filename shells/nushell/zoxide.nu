# Code generated by zoxide. DO NOT EDIT.

# =============================================================================
#
# Hook configuration for zoxide.
#

# Default prompt for Nushell.
$env.__zoxide_oldprompt = (if '__zoxide_oldprompt' in ($env | columns) {
  $env.__zoxide_oldprompt
} else if 'PROMPT_COMMAND' in ($env | columns) {
  $env.PROMPT_COMMAND
} else {
  { || $env.PWD }
})

# Hook to add new entries to the database.
def __zoxide_hook [] {
  zoxide add -- $env.PWD
}

# Initialize hook.
$env.PROMPT_COMMAND = { ||
  __zoxide_hook
  do $env.__zoxide_oldprompt
}

# =============================================================================
#
# When using zoxide with --no-cmd, alias these internal functions as desired.
#

# Jump to a directory using only keywords.
def-env __zoxide_z [rest:string] {
  # `z -` does not work yet, see https://github.com/nushell/nushell/issues/4769
  let arg0 = ($rest | append '~').0
  let path = if ($rest | str length) <= 1 and ($arg0 | path expand | path type) == dir {
    $arg0
  } else {
    (zoxide query --exclude $env.PWD -- $rest | str trim -r -c "\n")
  }
  cd $path
}

# Jump to a directory using interactive search.
def-env __zoxide_zi  [...rest:string] {
  cd $'(zoxide query -i -- $rest | str trim -r -c "\n")'
}

# =============================================================================
#
# Commands for zoxide. Disable these using --no-cmd.
#

alias z = __zoxide_z
alias zi = __zoxide_zi

# =============================================================================
#
# Add this to your env file (find it by running `$nu.env-path` in Nushell):
#
#   zoxide init nushell --hook prompt | save ~/.zoxide.nu
#
# Now, add this to the end of your config file (find it by running
# `$nu.config-path` in Nushell):
#
#   source ~/.zoxide.nu
#
# Note: zoxide only supports Nushell v0.61.0 and above.
