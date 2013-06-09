.class final Lcom/zhangdan/preferential/bx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/weibo/sdk/android/g;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/WeiboLoginActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/WeiboLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/bx;->a:Lcom/zhangdan/preferential/WeiboLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/WeiboLoginActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/bx;-><init>(Lcom/zhangdan/preferential/WeiboLoginActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/weibo/sdk/android/a;

    invoke-direct {v2, v0, v1}, Lcom/weibo/sdk/android/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/weibo/sdk/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v2}, Lcom/weibo/sdk/android/a;->d()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    :try_start_0
    const-string v0, "com.weibo.sdk.android.a.b"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/preferential/bx;->a:Lcom/zhangdan/preferential/WeiboLoginActivity;

    invoke-static {v0, v2}, Lcom/zhangdan/preferential/a/a;->a(Landroid/content/Context;Lcom/weibo/sdk/android/a;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/bx;->a:Lcom/zhangdan/preferential/WeiboLoginActivity;

    const v1, 0x7f0800ad

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    iget-object v0, p0, Lcom/zhangdan/preferential/bx;->a:Lcom/zhangdan/preferential/WeiboLoginActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/WeiboLoginActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/bx;->a:Lcom/zhangdan/preferential/WeiboLoginActivity;

    const v1, 0x7f0801e9

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/weibo/sdk/android/k;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/weibo/sdk/android/l;)V
    .locals 0

    return-void
.end method
