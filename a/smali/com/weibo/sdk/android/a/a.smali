.class public final Lcom/weibo/sdk/android/a/a;
.super Lcom/weibo/sdk/android/a/b;


# direct methods
.method public constructor <init>(Lcom/weibo/sdk/android/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/weibo/sdk/android/a/b;-><init>(Lcom/weibo/sdk/android/a;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/g;)V
    .locals 3

    new-instance v0, Lcom/weibo/sdk/android/m;

    invoke-direct {v0}, Lcom/weibo/sdk/android/m;-><init>()V

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pic"

    invoke-virtual {v0, v1, p2}, Lcom/weibo/sdk/android/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "long"

    invoke-virtual {v0, v1, p4}, Lcom/weibo/sdk/android/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "lat"

    invoke-virtual {v0, v1, p3}, Lcom/weibo/sdk/android/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "https://api.weibo.com/2/statuses/upload.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/weibo/sdk/android/a/a;->a(Ljava/lang/String;Lcom/weibo/sdk/android/m;Ljava/lang/String;Lcom/weibo/sdk/android/net/g;)V

    return-void
.end method
