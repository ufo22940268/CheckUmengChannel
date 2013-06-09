.class public Lcom/tencent/tauth/AuthActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/a/n;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {}, Lcom/tencent/a/a;->a()Lcom/tencent/a/a;

    move-result-object v2

    const-string v3, "serial"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/a/a;->a(Ljava/lang/String;)Lcom/tencent/a/b;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "://cancel"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    iget-object v0, v4, Lcom/tencent/a/b;->a:Lcom/tencent/tauth/b;

    invoke-interface {v0}, Lcom/tencent/tauth/b;->a()V

    iget-object v0, v4, Lcom/tencent/a/b;->b:Lcom/tencent/a/i;

    invoke-virtual {v0}, Lcom/tencent/a/i;->dismiss()V

    :goto_0
    invoke-virtual {v2, v3}, Lcom/tencent/a/a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    return-void

    :cond_1
    const-string v0, "access_token"

    const-string v5, "access_token"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/tencent/a/b;->c:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/tencent/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/a/n;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, v0}, Lcom/tencent/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "cb"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v4, v4, Lcom/tencent/a/b;->b:Lcom/tencent/a/i;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/tencent/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, v4, Lcom/tencent/a/b;->a:Lcom/tencent/tauth/b;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/b;->a(Lorg/json/JSONObject;)V

    iget-object v0, v4, Lcom/tencent/a/b;->b:Lcom/tencent/a/i;

    invoke-virtual {v0}, Lcom/tencent/a/i;->dismiss()V

    goto :goto_0
.end method
