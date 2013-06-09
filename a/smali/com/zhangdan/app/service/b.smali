.class public final Lcom/zhangdan/app/service/b;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/service/MailBillService;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/service/MailBillService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/zhangdan/app/service/b;->a:Lcom/zhangdan/app/service/MailBillService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/zhangdan/app/service/b;->f:Z

    iput v0, p0, Lcom/zhangdan/app/service/b;->g:I

    iput v0, p0, Lcom/zhangdan/app/service/b;->h:I

    iput-object p2, p0, Lcom/zhangdan/app/service/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/zhangdan/app/service/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/zhangdan/app/service/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/zhangdan/app/service/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/service/b;->f:Z

    return-void
.end method

.method public final b()V
    .locals 5

    const/4 v4, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/zhangdan/app/service/b;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/service/b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/zhangdan/app/service/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/zhangdan/app/service/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/zhangdan/app/service/b;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/zhangdan/app/b/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/ab;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zhangdan/app/service/b;->f:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/zhangdan/app/service/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zhangdan/app/service/b;->g:I

    iget v0, p0, Lcom/zhangdan/app/service/b;->g:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput v4, p0, Lcom/zhangdan/app/service/b;->g:I

    iget-boolean v1, p0, Lcom/zhangdan/app/service/b;->f:Z

    if-nez v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "bill"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "com.zhangdan.app.parse_bill"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/zhangdan/app/service/b;->a:Lcom/zhangdan/app/service/MailBillService;

    invoke-virtual {v2, v1}, Lcom/zhangdan/app/service/MailBillService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/ab;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/ab;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget v1, p0, Lcom/zhangdan/app/service/b;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zhangdan/app/service/b;->h:I

    iget v1, p0, Lcom/zhangdan/app/service/b;->h:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    :goto_1
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/ab;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/service/b;->e:Ljava/lang/String;

    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-boolean v0, p0, Lcom/zhangdan/app/service/b;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_5
    iput v4, p0, Lcom/zhangdan/app/service/b;->h:I

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
