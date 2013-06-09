.class public Lcom/zhangdan/preferential/WeiboLoginActivity;
.super Landroid/app/Activity;


# instance fields
.field public a:Lcom/weibo/sdk/android/b/a;

.field private b:Lcom/weibo/sdk/android/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "4101037885"

    const-string v1, "http://www.51zhangdan.com/service/user/sinalogin.ashx"

    invoke-static {v0, v1}, Lcom/weibo/sdk/android/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/weibo/sdk/android/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/WeiboLoginActivity;->b:Lcom/weibo/sdk/android/e;

    new-instance v0, Lcom/weibo/sdk/android/b/a;

    iget-object v1, p0, Lcom/zhangdan/preferential/WeiboLoginActivity;->b:Lcom/weibo/sdk/android/e;

    invoke-direct {v0, p0, v1}, Lcom/weibo/sdk/android/b/a;-><init>(Landroid/app/Activity;Lcom/weibo/sdk/android/e;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/WeiboLoginActivity;->a:Lcom/weibo/sdk/android/b/a;

    iget-object v0, p0, Lcom/zhangdan/preferential/WeiboLoginActivity;->a:Lcom/weibo/sdk/android/b/a;

    new-instance v1, Lcom/zhangdan/preferential/bx;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zhangdan/preferential/bx;-><init>(Lcom/zhangdan/preferential/WeiboLoginActivity;B)V

    invoke-virtual {v0, v1}, Lcom/weibo/sdk/android/b/a;->a(Lcom/weibo/sdk/android/g;)V

    return-void
.end method
