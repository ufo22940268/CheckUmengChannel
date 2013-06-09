.class public final Lcom/zhangdan/app/receiver/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/zhangdan/app/receiver/f;

.field private c:Lcom/zhangdan/app/receiver/c;

.field private d:Lcom/zhangdan/app/receiver/g;

.field private e:Lcom/zhangdan/app/receiver/j;

.field private f:Lcom/zhangdan/app/receiver/i;

.field private g:Lcom/zhangdan/app/receiver/h;

.field private h:Lcom/zhangdan/app/receiver/e;

.field private i:Lcom/zhangdan/app/receiver/d;

.field private final j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/receiver/a;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/zhangdan/app/receiver/a;->b:Lcom/zhangdan/app/receiver/f;

    iput-object v0, p0, Lcom/zhangdan/app/receiver/a;->c:Lcom/zhangdan/app/receiver/c;

    iput-object v0, p0, Lcom/zhangdan/app/receiver/a;->d:Lcom/zhangdan/app/receiver/g;

    iput-object v0, p0, Lcom/zhangdan/app/receiver/a;->e:Lcom/zhangdan/app/receiver/j;

    iput-object v0, p0, Lcom/zhangdan/app/receiver/a;->f:Lcom/zhangdan/app/receiver/i;

    iput-object v0, p0, Lcom/zhangdan/app/receiver/a;->g:Lcom/zhangdan/app/receiver/h;

    iput-object v0, p0, Lcom/zhangdan/app/receiver/a;->h:Lcom/zhangdan/app/receiver/e;

    iput-object v0, p0, Lcom/zhangdan/app/receiver/a;->i:Lcom/zhangdan/app/receiver/d;

    new-instance v0, Lcom/zhangdan/app/receiver/b;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/receiver/b;-><init>(Lcom/zhangdan/app/receiver/a;)V

    iput-object v0, p0, Lcom/zhangdan/app/receiver/a;->j:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/zhangdan/app/receiver/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/zhangdan/app/receiver/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_a

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "com.zhangdan.app.download_data_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    const-string v1, "com.zhangdan.app.download_data_end"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    const-string v1, "com.zhangdan.app.download_progress"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_3

    const-string v1, "com.zhangdan.app.download_avatar"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_4

    const-string v1, "com.zhangdan.app.mail_account_update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_4
    and-int/lit8 v1, p2, 0x40

    if-eqz v1, :cond_5

    const-string v1, "com.zhangdan.app.user_bank_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_5
    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_6

    const-string v1, "com.zhangdan.app.new_bill"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_6
    and-int/lit16 v1, p2, 0x100

    if-eqz v1, :cond_7

    const-string v1, "com.zhangdan.app.mail_status"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_7
    and-int/lit16 v1, p2, 0x200

    if-eqz v1, :cond_8

    const-string v1, "com.zhangdan.app.parse_bill"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_8
    and-int/lit16 v1, p2, 0x400

    if-eqz v1, :cond_9

    const-string v1, "com.zhangdan.app.bank_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lcom/zhangdan/app/receiver/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/zhangdan/app/receiver/a;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_a
    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/f;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/receiver/a;->b:Lcom/zhangdan/app/receiver/f;

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/c;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/receiver/a;->c:Lcom/zhangdan/app/receiver/c;

    return-object v0
.end method

.method static synthetic c(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/g;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/receiver/a;->d:Lcom/zhangdan/app/receiver/g;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/j;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/receiver/a;->e:Lcom/zhangdan/app/receiver/j;

    return-object v0
.end method

.method static synthetic e(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/i;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/receiver/a;->f:Lcom/zhangdan/app/receiver/i;

    return-object v0
.end method

.method static synthetic f(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/h;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/receiver/a;->g:Lcom/zhangdan/app/receiver/h;

    return-object v0
.end method

.method static synthetic g(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/e;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/receiver/a;->h:Lcom/zhangdan/app/receiver/e;

    return-object v0
.end method

.method static synthetic h(Lcom/zhangdan/app/receiver/a;)Lcom/zhangdan/app/receiver/d;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/receiver/a;->i:Lcom/zhangdan/app/receiver/d;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zhangdan/app/receiver/a;->b:Lcom/zhangdan/app/receiver/f;

    iput-object v2, p0, Lcom/zhangdan/app/receiver/a;->c:Lcom/zhangdan/app/receiver/c;

    iput-object v2, p0, Lcom/zhangdan/app/receiver/a;->d:Lcom/zhangdan/app/receiver/g;

    iput-object v2, p0, Lcom/zhangdan/app/receiver/a;->e:Lcom/zhangdan/app/receiver/j;

    iput-object v2, p0, Lcom/zhangdan/app/receiver/a;->f:Lcom/zhangdan/app/receiver/i;

    iput-object v2, p0, Lcom/zhangdan/app/receiver/a;->g:Lcom/zhangdan/app/receiver/h;

    iput-object v2, p0, Lcom/zhangdan/app/receiver/a;->h:Lcom/zhangdan/app/receiver/e;

    iput-object v2, p0, Lcom/zhangdan/app/receiver/a;->i:Lcom/zhangdan/app/receiver/d;

    iget-object v0, p0, Lcom/zhangdan/app/receiver/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/receiver/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/zhangdan/app/receiver/a;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iput-object v2, p0, Lcom/zhangdan/app/receiver/a;->a:Landroid/content/Context;

    return-void
.end method

.method public final a(Lcom/zhangdan/app/receiver/c;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/receiver/a;->c:Lcom/zhangdan/app/receiver/c;

    return-void
.end method

.method public final a(Lcom/zhangdan/app/receiver/d;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/receiver/a;->i:Lcom/zhangdan/app/receiver/d;

    return-void
.end method

.method public final a(Lcom/zhangdan/app/receiver/e;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/receiver/a;->h:Lcom/zhangdan/app/receiver/e;

    return-void
.end method

.method public final a(Lcom/zhangdan/app/receiver/f;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/receiver/a;->b:Lcom/zhangdan/app/receiver/f;

    return-void
.end method

.method public final a(Lcom/zhangdan/app/receiver/g;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/receiver/a;->d:Lcom/zhangdan/app/receiver/g;

    return-void
.end method

.method public final a(Lcom/zhangdan/app/receiver/h;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/receiver/a;->g:Lcom/zhangdan/app/receiver/h;

    return-void
.end method

.method public final a(Lcom/zhangdan/app/receiver/i;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/receiver/a;->f:Lcom/zhangdan/app/receiver/i;

    return-void
.end method

.method public final a(Lcom/zhangdan/app/receiver/j;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/receiver/a;->e:Lcom/zhangdan/app/receiver/j;

    return-void
.end method
