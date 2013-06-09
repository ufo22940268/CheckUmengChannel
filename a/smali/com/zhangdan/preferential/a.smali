.class final Lcom/zhangdan/preferential/a;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/AddBankActivity;

.field private b:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/AddBankActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/a;->a:Lcom/zhangdan/preferential/AddBankActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/AddBankActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/a;-><init>(Lcom/zhangdan/preferential/AddBankActivity;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/zhangdan/preferential/a;->a:Lcom/zhangdan/preferential/AddBankActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/AddBankActivity;->a(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/a/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/a/aa;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/preferential/a;->a:Lcom/zhangdan/preferential/AddBankActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/AddBankActivity;->b(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/a/f;

    iget-object v1, p0, Lcom/zhangdan/preferential/a;->a:Lcom/zhangdan/preferential/AddBankActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/AddBankActivity;->b(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/a/f;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/a;->a:Lcom/zhangdan/preferential/AddBankActivity;

    invoke-static {v2}, Lcom/zhangdan/preferential/AddBankActivity;->c(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/a/o;

    invoke-static {v0}, Lcom/zhangdan/preferential/a/o;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zhangdan/preferential/a/f;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/f;->j(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/a;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/zhangdan/preferential/a;->a:Lcom/zhangdan/preferential/AddBankActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/AddBankActivity;->b(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/a/f;

    iget-object v0, p0, Lcom/zhangdan/preferential/a;->a:Lcom/zhangdan/preferential/AddBankActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/AddBankActivity;->b(Lcom/zhangdan/preferential/AddBankActivity;)Lcom/zhangdan/preferential/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/a/f;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/f;->i(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/a;->a:Lcom/zhangdan/preferential/AddBankActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/AddBankActivity;->d()V

    iget-object v0, p0, Lcom/zhangdan/preferential/a;->a:Lcom/zhangdan/preferential/AddBankActivity;

    iget-object v1, p0, Lcom/zhangdan/preferential/a;->b:Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/zhangdan/preferential/AddBankActivity;->a(Lcom/zhangdan/preferential/AddBankActivity;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/a;->a:Lcom/zhangdan/preferential/AddBankActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/AddBankActivity;->c()V

    return-void
.end method
