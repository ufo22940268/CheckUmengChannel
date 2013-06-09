.class final Lcom/zhangdan/preferential/c;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/BankConfigurationActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/BankConfigurationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/c;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/BankConfigurationActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/c;-><init>(Lcom/zhangdan/preferential/BankConfigurationActivity;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/zhangdan/preferential/c;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->f(Lcom/zhangdan/preferential/BankConfigurationActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/c;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/BankConfigurationActivity;->a(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/a/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangdan/preferential/a/aa;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/c;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-static {v2}, Lcom/zhangdan/preferential/BankConfigurationActivity;->b(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/a/f;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/c;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-static {v3}, Lcom/zhangdan/preferential/BankConfigurationActivity;->c(Lcom/zhangdan/preferential/BankConfigurationActivity;)Lcom/zhangdan/preferential/a/o;

    invoke-static {v1, v0}, Lcom/zhangdan/preferential/a/o;->a(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zhangdan/preferential/a/f;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/c;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->e()V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/c;->a:Lcom/zhangdan/preferential/BankConfigurationActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/BankConfigurationActivity;->d()V

    return-void
.end method
