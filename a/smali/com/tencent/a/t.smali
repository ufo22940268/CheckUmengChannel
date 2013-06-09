.class final Lcom/tencent/a/t;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/tencent/tauth/a;

.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:Lcom/tencent/a/f;


# direct methods
.method constructor <init>(Lcom/tencent/a/f;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/a;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/a/t;->g:Lcom/tencent/a/f;

    iput-object p2, p0, Lcom/tencent/a/t;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/a/t;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/a/t;->c:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/tencent/a/t;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/a/t;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/tencent/a/t;->g:Lcom/tencent/a/f;

    iget-object v1, p0, Lcom/tencent/a/t;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/a/t;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/a/t;->c:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/tencent/a/t;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/a/f;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    iget-object v2, p0, Lcom/tencent/a/t;->f:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/a;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/tencent/a/e; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/tencent/a/c; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    iget-object v2, p0, Lcom/tencent/a/t;->f:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/a;->a(Ljava/net/MalformedURLException;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    iget-object v1, p0, Lcom/tencent/a/t;->f:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/tencent/tauth/a;->a()V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    iget-object v1, p0, Lcom/tencent/a/t;->f:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/tencent/tauth/a;->b()V

    goto :goto_0

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    iget-object v1, p0, Lcom/tencent/a/t;->f:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/tencent/tauth/a;->d()V

    goto :goto_0

    :catch_4
    move-exception v0

    iget-object v0, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    iget-object v1, p0, Lcom/tencent/a/t;->f:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/tencent/tauth/a;->e()V

    goto :goto_0

    :catch_5
    move-exception v0

    iget-object v1, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    iget-object v2, p0, Lcom/tencent/a/t;->f:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/a;->a(Ljava/io/IOException;)V

    goto :goto_0

    :catch_6
    move-exception v0

    iget-object v1, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    iget-object v2, p0, Lcom/tencent/a/t;->f:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/a;->a(Lorg/json/JSONException;)V

    goto :goto_0

    :catch_7
    move-exception v0

    iget-object v0, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/t;->e:Lcom/tencent/tauth/a;

    iget-object v1, p0, Lcom/tencent/a/t;->f:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/tencent/tauth/a;->c()V

    goto :goto_0
.end method
