.class final Lcom/tencent/a/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tauth/b;


# instance fields
.field final synthetic a:Lcom/tencent/a/g;

.field private b:Lcom/tencent/tauth/b;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/tencent/a/g;Lcom/tencent/tauth/b;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/u;->a:Lcom/tencent/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/a/u;->b:Lcom/tencent/tauth/b;

    iput-boolean p3, p0, Lcom/tencent/a/u;->c:Z

    iput-boolean p4, p0, Lcom/tencent/a/u;->d:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/u;->b:Lcom/tencent/tauth/b;

    invoke-interface {v0}, Lcom/tencent/tauth/b;->a()V

    return-void
.end method

.method public final a(Lcom/tencent/tauth/d;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/u;->b:Lcom/tencent/tauth/b;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "openid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/tencent/a/u;->a:Lcom/tencent/a/g;

    invoke-static {v3}, Lcom/tencent/a/g;->a(Lcom/tencent/a/g;)Lcom/tencent/a/h;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/tencent/a/u;->a:Lcom/tencent/a/g;

    invoke-static {v3}, Lcom/tencent/a/g;->a(Lcom/tencent/a/g;)Lcom/tencent/a/h;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/tencent/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/a/u;->a:Lcom/tencent/a/g;

    invoke-static {v0}, Lcom/tencent/a/g;->a(Lcom/tencent/a/g;)Lcom/tencent/a/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/a/h;->a(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/a/u;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/a/u;->b:Lcom/tencent/tauth/b;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/b;->a(Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
