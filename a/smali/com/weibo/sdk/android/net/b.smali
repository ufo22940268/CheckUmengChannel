.class final Lcom/weibo/sdk/android/net/b;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/weibo/sdk/android/m;

.field private final synthetic d:Lcom/weibo/sdk/android/net/g;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/m;Lcom/weibo/sdk/android/net/g;)V
    .locals 0

    iput-object p1, p0, Lcom/weibo/sdk/android/net/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/weibo/sdk/android/net/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/weibo/sdk/android/net/b;->c:Lcom/weibo/sdk/android/m;

    iput-object p4, p0, Lcom/weibo/sdk/android/net/b;->d:Lcom/weibo/sdk/android/net/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/weibo/sdk/android/net/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/weibo/sdk/android/net/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/weibo/sdk/android/net/b;->c:Lcom/weibo/sdk/android/m;

    iget-object v3, p0, Lcom/weibo/sdk/android/net/b;->c:Lcom/weibo/sdk/android/m;

    const-string v4, "pic"

    invoke-virtual {v3, v4}, Lcom/weibo/sdk/android/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/weibo/sdk/android/net/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/weibo/sdk/android/net/b;->d:Lcom/weibo/sdk/android/net/g;

    invoke-interface {v1, v0}, Lcom/weibo/sdk/android/net/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/weibo/sdk/android/l; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/weibo/sdk/android/net/b;->d:Lcom/weibo/sdk/android/net/g;

    invoke-interface {v1, v0}, Lcom/weibo/sdk/android/net/g;->a(Lcom/weibo/sdk/android/l;)V

    goto :goto_0
.end method
