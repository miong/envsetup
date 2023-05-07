function gerrit_push
  echo (set_color brwhite; echo "Gerrit pushing"; set_color normal)
  set branchName $argv[1]
  if test -z "$branchName"
    echo (set_color bryellow; echo "No branch specified, defaulting to master"; set_color normal)
    set branchName "master"
  end
  echo (set_color brwhite; echo "Sending HEAD to review on branch $branchName"; set_color normal)
  git push (git branch --all | grep remotes/m/master | sed -E -e "s?.* -> (.*)/master?\1?g") HEAD:refs/for/$branchName
end
