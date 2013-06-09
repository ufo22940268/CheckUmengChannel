.class final Lcom/zhangdan/preferential/d;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/BankConfigurationActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/BankConfigurationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/d;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/BankConfigurationActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/d;-><init>(Lcom/zhangdan/preferential/BankConfigurationActivity;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/zhangdan/preferential/d;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->a(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/a/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/a/aa;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/d;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/BankConfigurationActivity;->b(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/a/f;

    iget-object v1, p0, Lcom/zhangdan/preferential/d;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/BankConfigurationActivity;->b(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/a/f;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/d;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-static {v2}, Lcom/zhangdan/preferential/BankConfigurationActivity;->c(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/a/o;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/o;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/preferential/a/f;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/f;->j(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/d;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    const-string v2, "common"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "is_first_enter"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/preferential/d;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/BankConfigurationActivity;->d(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/a/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/d;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/BankConfigurationActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangdan/preferential/a/ab;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/preferential/d;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    const-string v2, "common"

    const v3, 0x8000

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "is_first_enter"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/d;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->e(Lcom/zhangdan/preferential/BankConfigurationActivity;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/d;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-static {v0, p1}, Lcom/zhangdan/preferential/BankConfigurationActivity;->a(Lcom/zhangdan/preferential/BankConfigurationActivity;Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/d;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->e()V

    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/d;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->d()V

    return-void
.end method
