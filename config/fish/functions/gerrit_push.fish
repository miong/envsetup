function gerrit_get_remote_name
  git branch --all | grep -E -e remotes/gerrit -e remotes/origin | sed -E -e "s?.*remotes/([^ ]*)/.*?\1?g" -e "s?(.*) -> .*?\1?g" | tail -n 1
end

function gerrit_push
  echo (set_color brwhite; echo "Gerrit pushing"; set_color normal)
  set branchName $argv[1]
  if test -z "$branchName"
    echo (set_color bryellow; echo "No branch specified, defaulting to master"; set_color normal)
    set branchName "master"
  end
  echo (set_color brwhite; echo "Sending HEAD to review on branch $branchName"; set_color normal)
  git push (gerrit_get_remote_name) HEAD:refs/for/$branchName
end
