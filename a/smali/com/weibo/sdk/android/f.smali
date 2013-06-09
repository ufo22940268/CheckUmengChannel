.class final Lcom/weibo/sdk/android/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/weibo/sdk/android/g;


# instance fields
.field final synthetic a:Lcom/weibo/sdk/android/e;

.field private final synthetic b:Lcom/weibo/sdk/android/g;


# direct methods
.method constructor <init>(Lcom/weibo/sdk/android/e;Lcom/weibo/sdk/android/g;)V
    .locals 0

    iput-object p1, p0, Lcom/weibo/sdk/android/f;->a:Lcom/weibo/sdk/android/e;

    iput-object p2, p0, Lcom/weibo/sdk/android/f;->b:Lcom/weibo/sdk/android/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/weibo/sdk/android/f;->b:Lcom/weibo/sdk/android/g;

    invoke-interface {v0}, Lcom/weibo/sdk/android/g;->a()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    iget-object v0, p0, Lcom/weibo/sdk/android/f;->a:Lcom/weibo/sdk/android/e;

    iget-object v0, v0, Lcom/weibo/sdk/android/e;->d:Lcom/weibo/sdk/android/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/weibo/sdk/android/f;->a:Lcom/weibo/sdk/android/e;

    new-instance v1, Lcom/weibo/sdk/android/a;

    invoke-direct {v1}, Lcom/weibo/sdk/android/a;-><init>()V

    iput-object v1, v0, Lcom/weibo/sdk/android/e;->d:Lcom/weibo/sdk/android/a;

    :cond_0
    iget-object v0, p0, Lcom/weibo/sdk/android/f;->a:Lcom/weibo/sdk/android/e;

    iget-object v0, v0, Lcom/weibo/sdk/android/e;->d:Lcom/weibo/sdk/android/a;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/weibo/sdk/android/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/weibo/sdk/android/f;->a:Lcom/weibo/sdk/android/e;

    iget-object v0, v0, Lcom/weibo/sdk/android/e;->d:Lcom/weibo/sdk/android/a;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/weibo/sdk/android/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/weibo/sdk/android/f;->a:Lcom/weibo/sdk/android/e;

    iget-object v0, v0, Lcom/weibo/sdk/android/e;->d:Lcom/weibo/sdk/android/a;

    const-string v1, "refresh_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/weibo/sdk/android/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/weibo/sdk/android/f;->a:Lcom/weibo/sdk/android/e;

    iget-object v0, v0, Lcom/weibo/sdk/android/e;->d:Lcom/weibo/sdk/android/a;

    invoke-virtual {v0}, Lcom/weibo/sdk/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Login Success! access_token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/weibo/sdk/android/f;->a:Lcom/weibo/sdk/android/e;

    iget-object v1, v1, Lcom/weibo/sdk/android/e;->d:Lcom/weibo/sdk/android/a;

    invoke-virtual {v1}, Lcom/weibo/sdk/android/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/weibo/sdk/android/f;->a:Lcom/weibo/sdk/android/e;

    iget-object v1, v1, Lcom/weibo/sdk/android/e;->d:Lcom/weibo/sdk/android/a;

    invoke-virtual {v1}, Lcom/weibo/sdk/android/a;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " refresh_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/weibo/sdk/android/f;->a:Lcom/weibo/sdk/android/e;

    iget-object v1, v1, Lcom/weibo/sdk/android/e;->d:Lcom/weibo/sdk/android/a;

    invoke-virtual {v1}, Lcom/weibo/sdk/android/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/weibo/sdk/android/f;->b:Lcom/weibo/sdk/android/g;

    invoke-interface {v0, p1}, Lcom/weibo/sdk/android/g;->a(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/weibo/sdk/android/f;->b:Lcom/weibo/sdk/android/g;

    new-instance v1, Lcom/weibo/sdk/android/l;

    const-string v2, "Failed to receive access token."

    invoke-direct {v1, v2}, Lcom/weibo/sdk/android/l;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/weibo/sdk/android/g;->a(Lcom/weibo/sdk/android/l;)V

    goto :goto_0
.end method

.method public final a(Lcom/weibo/sdk/android/k;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Login failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/weibo/sdk/android/f;->b:Lcom/weibo/sdk/android/g;

    invoke-interface {v0, p1}, Lcom/weibo/sdk/android/g;->a(Lcom/weibo/sdk/android/k;)V

    return-void
.end method

.method public final a(Lcom/weibo/sdk/android/l;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Login failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/weibo/sdk/android/f;->b:Lcom/weibo/sdk/android/g;

    invoke-interface {v0, p1}, Lcom/weibo/sdk/android/g;->a(Lcom/weibo/sdk/android/l;)V

    return-void
.end method
