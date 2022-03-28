module news/page

template showNews(){
  container{
    gridrow{
      gridcolmiddle{
        <div class="news-header">
          <h1 class="news-title">"Bridge Club"</h1>
          <p class="lead news-description">"Managing System desighed fo Bridge Club"</p>
        </dix>
      }
    }
    gridrow{
      gridcolmiddle{
        for(n: News in select u from News as u order by time descending){
          <div class="news-post">
            output(n)
          </div>

        }
      }
    }
  }
}

template output(n: News){
  <h2 class="news-post-title">output(n.title)</h2>
  <p class="news-post">
    output(n.time.format("d MMM yyyy HH:mm"))
  </p>
  <p>
    output(n.content)
  </p>
  if(loggedIn()){
    break
    navigate(editNews(n)){"edit"}
  }
  if(loggedIn() && n.){
    break
    navigate(editNews(n)){"edit"}
  }
}