.class public final Lcom/zhangdan/app/data/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "card"

    const-string v1, "avatar_uri"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "card"

    const-string v1, "list_mode"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "card"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "weather_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "card"

    const-string v1, "avatar_uri"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    const-string v0, "card"

    const-string v1, "main_bg_type"

    invoke-static {p0, v0, v1}, Lcom/zhangdan/app/data/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "card"

    const-string v1, "main_bg_res"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "card"

    const-string v1, "gexin"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2

    const-string v0, "card"

    const-string v1, "main_bg_res"

    invoke-static {p0, v0, v1}, Lcom/zhangdan/app/data/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "card"

    const-string v1, "main_bg_path"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "card"

    const-string v1, "main_bg_path"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "card"

    const-string v1, "local_pwd"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "card"

    const-string v1, "local_pwd"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "card"

    const-string v1, "push_data"

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/data/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)I
    .locals 2

    const-string v0, "card"

    const-string v1, "first_use"

    invoke-static {p0, v0, v1}, Lcom/zhangdan/app/data/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "card"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/zhangdan/app/data/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "card"

    const-string v1, "new_version"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "card"

    const-string v1, "push_data"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
