.class public abstract Lcom/weibo/sdk/android/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/weibo/sdk/android/a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/weibo/sdk/android/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/weibo/sdk/android/a/b;->a:Lcom/weibo/sdk/android/a;

    iget-object v0, p0, Lcom/weibo/sdk/android/a/b;->a:Lcom/weibo/sdk/android/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weibo/sdk/android/a/b;->a:Lcom/weibo/sdk/android/a;

    invoke-virtual {v0}, Lcom/weibo/sdk/android/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weibo/sdk/android/a/b;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Lcom/weibo/sdk/android/m;Ljava/lang/String;Lcom/weibo/sdk/android/net/g;)V
    .locals 2

    const-string v0, "access_token"

    iget-object v1, p0, Lcom/weibo/sdk/android/a/b;->b:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/weibo/sdk/android/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Lcom/weibo/sdk/android/net/a;->a(Ljava/lang/String;Lcom/weibo/sdk/android/m;Ljava/lang/String;Lcom/weibo/sdk/android/net/g;)V

    return-void
.end method
