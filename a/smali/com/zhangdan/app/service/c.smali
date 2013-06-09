.class final Lcom/zhangdan/app/service/c;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field final synthetic e:Lcom/zhangdan/app/service/MailStatusService;

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/service/MailStatusService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/zhangdan/app/service/c;->e:Lcom/zhangdan/app/service/MailStatusService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/zhangdan/app/service/c;->a:Z

    iput v0, p0, Lcom/zhangdan/app/service/c;->f:I

    iput v0, p0, Lcom/zhangdan/app/service/c;->g:I

    iput v0, p0, Lcom/zhangdan/app/service/c;->h:I

    iput-object p2, p0, Lcom/zhangdan/app/service/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/zhangdan/app/service/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/zhangdan/app/service/c;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MailStatusService code = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/zhangdan/app/service/c;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.zhangdan.app.mail_status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/service/c;->e:Lcom/zhangdan/app/service/MailStatusService;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/service/MailStatusService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 8

    const/4 v2, 0x4

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/zhangdan/app/service/c;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/service/c;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/zhangdan/app/service/c;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/zhangdan/app/service/c;->d:Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lcom/zhangdan/app/b/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zhangdan/app/data/model/http/MailStatusResult;

    move-result-object v5

    iget-boolean v0, p0, Lcom/zhangdan/app/service/c;->a:Z

    if-nez v0, :cond_1

    if-nez v5, :cond_2

    iget v0, p0, Lcom/zhangdan/app/service/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zhangdan/app/service/c;->f:I

    iget v0, p0, Lcom/zhangdan/app/service/c;->f:I

    const/4 v5, 0x6

    if-lt v0, v5, :cond_0

    new-instance v0, Lcom/zhangdan/app/data/model/http/MailStatusResult;

    invoke-direct {v0}, Lcom/zhangdan/app/data/model/http/MailStatusResult;-><init>()V

    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->a(I)V

    const-string v1, "\u670d\u52a1\u5668\u8fde\u63a5\u4e0d\u4e0a\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5..."

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->a(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/zhangdan/app/service/c;->a:Z

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/zhangdan/app/service/c;->a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput v1, p0, Lcom/zhangdan/app/service/c;->f:I

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v4

    :goto_1
    if-ne v0, v2, :cond_3

    iget v6, p0, Lcom/zhangdan/app/service/c;->g:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/zhangdan/app/service/c;->g:I

    iget v6, p0, Lcom/zhangdan/app/service/c;->g:I

    const/16 v7, 0xf

    if-lt v6, v7, :cond_4

    new-instance v0, Lcom/zhangdan/app/data/model/http/MailStatusResult;

    invoke-direct {v0}, Lcom/zhangdan/app/data/model/http/MailStatusResult;-><init>()V

    const/16 v1, -0x3e9

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->a(I)V

    const-string v1, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5..."

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/zhangdan/app/service/c;->a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_1

    :sswitch_1
    move v0, v1

    goto :goto_1

    :sswitch_2
    move v0, v2

    goto :goto_1

    :sswitch_3
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    move v0, v1

    goto :goto_1

    :sswitch_5
    move v0, v1

    goto :goto_1

    :sswitch_6
    move v0, v1

    goto :goto_1

    :sswitch_7
    move v0, v1

    goto :goto_1

    :sswitch_8
    move v0, v1

    goto :goto_1

    :sswitch_9
    move v0, v1

    goto :goto_1

    :sswitch_a
    move v0, v1

    goto :goto_1

    :sswitch_b
    move v0, v1

    goto :goto_1

    :sswitch_c
    move v0, v1

    goto :goto_1

    :sswitch_d
    move v0, v3

    goto :goto_1

    :sswitch_e
    move v0, v3

    goto :goto_1

    :sswitch_f
    move v0, v3

    goto :goto_1

    :sswitch_10
    move v0, v3

    goto :goto_1

    :sswitch_11
    move v0, v3

    goto :goto_1

    :sswitch_12
    move v0, v3

    goto :goto_1

    :sswitch_13
    move v0, v3

    goto :goto_1

    :sswitch_14
    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    iput v1, p0, Lcom/zhangdan/app/service/c;->g:I

    :cond_4
    if-ne v0, v4, :cond_5

    iget v6, p0, Lcom/zhangdan/app/service/c;->h:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/zhangdan/app/service/c;->h:I

    iget v6, p0, Lcom/zhangdan/app/service/c;->h:I

    if-ge v6, v4, :cond_1

    :goto_2
    iget-boolean v6, p0, Lcom/zhangdan/app/service/c;->a:Z

    if-nez v6, :cond_1

    invoke-direct {p0, v5}, Lcom/zhangdan/app/service/c;->a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/zhangdan/app/service/c;->a:Z

    if-nez v0, :cond_1

    const-wide/16 v5, 0xbb8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-boolean v0, p0, Lcom/zhangdan/app/service/c;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_5
    iput v1, p0, Lcom/zhangdan/app/service/c;->h:I

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_8
        0xf -> :sswitch_d
        0x64 -> :sswitch_1
        0x65 -> :sswitch_c
        0xc8 -> :sswitch_e
        0xc9 -> :sswitch_f
        0xca -> :sswitch_10
        0x12c -> :sswitch_11
        0x12d -> :sswitch_12
        0x12e -> :sswitch_13
        0x3e8 -> :sswitch_14
    .end sparse-switch
.end method
