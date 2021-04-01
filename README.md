
# 개인 jekyll blog

## 로컬 실행
bundle exec jekyll serve

## 빌드
bundle exec jekyll build

## doc 폴더
실제 서비스는 doc 폴더에 빌드된 정적파일들이 github블로그 사이트로 서비스된다.
github가 개편 되기 전에는 빌드된 정적 파일을 블로그 서비스하기위해
좀 복잡하게 2개의 브랜치로 나눠서 소스파일, 빌드된파일을 따로 관리하여 push 해야지만
가능해서 publish.sh 를 이용해서 빌드했지만 지금은 필요 없다.

## jekyll 테마
커스텀 plugin 을 사용한 jekyll 테마이기 때문에
보통 _post 내에 있는 md 파일과 directory는 github에 push 되면 인지해서 정적파일이 생성되지만 이 블로그 테마 처럼 _plugins 폴더에 설정되어 생성되는 about 페이지와 tag별 로 포스트가 보여지는 페이지 author별로 포스트가 보여지는 페이지는 생성이 안된다(로컬에서는 된다)

그래서 아래 포스터 내용처럼 처리 해야한다

[Jekyll 블로그 plugin 적용하고 page not found(404) 에러 해결하기](https://rainsound-k.github.io/jekyll-blog/2018/05/02/apply-custom-plugin.html)

