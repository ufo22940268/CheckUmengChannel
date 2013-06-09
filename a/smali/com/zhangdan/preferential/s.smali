.class final Lcom/zhangdan/preferential/s;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/PickErrorActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/PickErrorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/s;->a:Lcom/zhangdan/preferential/PickErrorActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/PickErrorActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/s;-><init>(Lcom/zhangdan/preferential/PickErrorActivity;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, [Ljava/lang/Integer;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/preferential/s;->a:Lcom/zhangdan/preferential/PickErrorActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/PickErrorActivity;->a(Lcom/zhangdan/preferential/PickErrorActivity;)Lcom/zhangdan/preferential/a/f;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/preferential/s;->a:Lcom/zhangdan/preferential/PickErrorActivity;

    invoke-static {v2}, Lcom/zhangdan/preferential/PickErrorActivity;->b(Lcom/zhangdan/preferential/PickErrorActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/s;->a:Lcom/zhangdan/preferential/PickErrorActivity;

    invoke-static {v3}, Lcom/zhangdan/preferential/PickErrorActivity;->c(Lcom/zhangdan/preferential/PickErrorActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/zhangdan/preferential/a/f;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/s;->a:Lcom/zhangdan/preferential/PickErrorActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/PickErrorActivity;->e()V

    iget-object v0, p0, Lcom/zhangdan/preferential/s;->a:Lcom/zhangdan/preferential/PickErrorActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/PickErrorActivity;->finish()V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/s;->a:Lcom/zhangdan/preferential/PickErrorActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/PickErrorActivity;->d()V

    return-void
.end method
