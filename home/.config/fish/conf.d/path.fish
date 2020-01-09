# path.fish

if type -fq brew

  set -l brew_prefix (brew --prefix)

  # nvm
  if [ -d $brew_prefix/opt/nvm ]
    set -gx nvm_prefix $brew_prefix/opt/nvm
  end

  # LLVM
  if [ -d $brew_prefix/opt/llvm ]
      set PATH $PATH $brew_prefix/opt/llvm/bin
      set -g -x LDFLAGS "-L$brew_prefix/opt/llvm/lib -Wl,-rpath,$brew_prefix/opt/llvm/lib"
  end


  # Google Cloud sdk
  if [ -f $brew_prefix/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc ]
      . $brew_prefix/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
  end

end

# GoLang
if type -fq go
    set -x GOROOT (go env GOROOT)
    set -x GOPATH $HOME/.go
    if [ -d $GOPATH/bin ]; and not contains $GOPATH/bin $PATH
        set PATH $PATH $GOPATH/bin
    end
end

# nodebrew
if [ -d $HOME/.nodebrew/current/bin ]
  set PATH $PATH $HOME/.nodebrew/current/bin
end
