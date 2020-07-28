# theneooasis.github.io
jekyll blog

커스텀 plugin 을 사용한 jekyll 테마이기 때문에
보통 _post 내에 있는 md 파일과 directory는 github에 push 되면 인지해서 정적파일이 생성되지만 이 블로그 테마 처럼 _plugins 폴더에 설정되어 생성되는 about 페이지와 tag별 로 포스트가 보여지는 페이지 author별로 포스트가 보여지는 페이지는 생성이 안된다(로컬에서는 된다)

그래서 아래 포스터 내용처럼 처리 해야한다

[Jekyll 블로그 plugin 적용하고 page not found(404) 에러 해결하기](https://rainsound-k.github.io/jekyll-blog/2018/05/02/apply-custom-plugin.html)

즉 master 브랜치에는 _site(빌드된 결과물) 내용만 올라가도록 하고 다른 브랜치(source) 브랜치에서 전부 원래 소스를 관리하도록 한다.

중요한 부분은 _site를 gitignore에 포함하지 않고 관리되도록 포함 되어야한다.

그리고 source 브랜치에서 포스트 수정후 bundle exec jekyll serve 를 로컬에서 실행하면_site에 파일을 빌드 되는데 
그러면 URL localhost:4000으로 빌드된다.
배포할 때는 반드시 bundle exec jekyll build로 빌드하여 URL이 https://theneooasis.github.io로 빌드되로록 한 후
source 브랜치를 완전히 push 하고 bash publish.sh를 실행 _site의 내용만 master 브랜치에 복사되어 push된다