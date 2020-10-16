# KAIZEN

### サイトテーマ

企業内で業務改善・効率化の文化を醸成するアプリケーション
http://kaizen-portfolio.xyz/

## サイト概要

<img width="848" alt="img3" src="https://user-images.githubusercontent.com/55015069/95005091-a0256680-062e-11eb-8834-88d0c7a62839.png">  
当サイトは課題を改善するカルチャーの醸成および、最速で意思決定を可能にします。

### テーマを選んだ理由

業務改善・効率化に対する問題提議のできない企業文化を変えたいと考えています。  
煩雑な業務に対する問題を抱えており、問題提議すれば解決できる事象を改善できない場合があり、
その理由は主に下記の理由が挙げられます。  
・課題解決型の社内文化がないので問題提議がされない。（忍耐が仕事という価値観)  
・課題解決の提案は、一部社員（または上司）の間でしか共有されず、達成しない。  
・問題定義のための言語化、数値化、プレゼン能力など、いずれかの能力が不足し一部の社員のみしか提案できない環境

その課題を当サイトの下記理由により解決します。  
・問題定義にたいして、いいね機能を付与しています。ネガティブな表現がないため、積極的に改善提案がされます。  
・WEB アプリケーションのため、社員全員が共有可能です。コメント機能を利用し、誰でも参加できます。  
・知識がなくても簡単に作成できます。また、課題の解決提案も規格化して、簡単に数値化できるので管理者も正当な評価ができます。

### ターゲットユーザ

非 IT 企業であり、社員同士が自発的に課題を改善しあう文化を醸成したい企業
改善効果を数値化したい企業
改善の規格化を行いたい企業

### 使用技術

使用技術
Ruby 2.5.7
Ruby on Rails 5.2.4.3
MySQL 5.7
Nginx
Puma
AWS
VPC
EC2
RDS
Route 53
CloudWatch
S3 "アップロード後 lambda がトリガーになり、画像をリサイズする。"
ALB
Lambda "S3 に画像が保存された場合にトリガーとして起動"
chart.js
omniauth-google-oauth2
devise
Ajax
refile
kaminari
chart.js "グラフ用"
bootstrap "bootstrap"

### 機能一覧

https://docs.google.com/spreadsheets/d/1vOelOPR-K3nAX49vZ8VDxQhblMHYfFEr-gAP3W6F6bs/edit#gid=0

### AWS 構成図

![kaizen_aws](https://user-images.githubusercontent.com/55015069/95825796-6100bf00-0d6c-11eb-8ce1-20dc53fcb559.png)
