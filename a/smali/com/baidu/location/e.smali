.class public final Lcom/baidu/location/e;
.super Ljava/lang/Object;


# instance fields
.field private A:Landroid/content/ServiceConnection;

.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Lcom/baidu/location/k;

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Landroid/os/Messenger;

.field private i:Lcom/baidu/location/h;

.field private final j:Landroid/os/Messenger;

.field private k:Ljava/util/ArrayList;

.field private l:Lcom/baidu/location/a;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Lcom/baidu/location/j;

.field private q:Z

.field private r:Z

.field private final s:Ljava/lang/Object;

.field private t:Lcom/baidu/location/i;

.field private u:Z

.field private v:Lcom/baidu/location/c;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/Boolean;

.field private z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "3.3"

    iput-object v0, p0, Lcom/baidu/location/e;->a:Ljava/lang/String;

    iput-wide v4, p0, Lcom/baidu/location/e;->b:J

    iput-wide v4, p0, Lcom/baidu/location/e;->c:J

    iput-object v3, p0, Lcom/baidu/location/e;->d:Ljava/lang/String;

    new-instance v0, Lcom/baidu/location/k;

    invoke-direct {v0}, Lcom/baidu/location/k;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    iput-boolean v2, p0, Lcom/baidu/location/e;->f:Z

    iput-object v3, p0, Lcom/baidu/location/e;->g:Landroid/content/Context;

    iput-object v3, p0, Lcom/baidu/location/e;->h:Landroid/os/Messenger;

    new-instance v0, Lcom/baidu/location/h;

    invoke-direct {v0, p0, v2}, Lcom/baidu/location/h;-><init>(Lcom/baidu/location/e;B)V

    iput-object v0, p0, Lcom/baidu/location/e;->i:Lcom/baidu/location/h;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/baidu/location/e;->i:Lcom/baidu/location/h;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/e;->j:Landroid/os/Messenger;

    iput-object v3, p0, Lcom/baidu/location/e;->k:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/baidu/location/e;->l:Lcom/baidu/location/a;

    iput-boolean v2, p0, Lcom/baidu/location/e;->m:Z

    iput-boolean v2, p0, Lcom/baidu/location/e;->n:Z

    iput-boolean v2, p0, Lcom/baidu/location/e;->o:Z

    iput-object v3, p0, Lcom/baidu/location/e;->p:Lcom/baidu/location/j;

    iput-boolean v2, p0, Lcom/baidu/location/e;->q:Z

    iput-boolean v2, p0, Lcom/baidu/location/e;->r:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/e;->s:Ljava/lang/Object;

    iput-object v3, p0, Lcom/baidu/location/e;->t:Lcom/baidu/location/i;

    iput-boolean v2, p0, Lcom/baidu/location/e;->u:Z

    iput-object v3, p0, Lcom/baidu/location/e;->v:Lcom/baidu/location/c;

    iput-object v3, p0, Lcom/baidu/location/e;->w:Ljava/lang/String;

    const-string v0, "http://loc.map.baidu.com/sdk.php"

    iput-object v0, p0, Lcom/baidu/location/e;->x:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e;->y:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e;->z:Ljava/lang/Boolean;

    new-instance v0, Lcom/baidu/location/g;

    invoke-direct {v0, p0}, Lcom/baidu/location/g;-><init>(Lcom/baidu/location/e;)V

    iput-object v0, p0, Lcom/baidu/location/e;->A:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/baidu/location/e;->g:Landroid/content/Context;

    new-instance v0, Lcom/baidu/location/k;

    invoke-direct {v0}, Lcom/baidu/location/k;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    new-instance v0, Lcom/baidu/location/i;

    iget-object v1, p0, Lcom/baidu/location/e;->g:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/baidu/location/i;-><init>(Landroid/content/Context;Lcom/baidu/location/e;)V

    iput-object v0, p0, Lcom/baidu/location/e;->t:Lcom/baidu/location/i;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/e;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/e;->h:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/e;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e;->h:Landroid/os/Messenger;

    return-object p1
.end method

.method private a(I)V
    .locals 6

    const/16 v5, 0x43

    const/16 v4, 0x42

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/location/e;->n:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/baidu/location/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/location/e;->l:Lcom/baidu/location/a;

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/baidu/location/e;->n:Z

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/location/e;->m:Z

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    iget-boolean v0, v0, Lcom/baidu/location/k;->h:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/baidu/location/e;->l:Lcom/baidu/location/a;

    invoke-virtual {v0}, Lcom/baidu/location/a;->d()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/e;->l:Lcom/baidu/location/a;

    invoke-virtual {v0}, Lcom/baidu/location/a;->d()I

    move-result v0

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/baidu/location/e;->l:Lcom/baidu/location/a;

    invoke-virtual {v0}, Lcom/baidu/location/a;->d()I

    move-result v0

    if-ne v0, v5, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    invoke-virtual {v0}, Lcom/baidu/location/k;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/e;->l:Lcom/baidu/location/a;

    invoke-virtual {v0}, Lcom/baidu/location/a;->d()I

    move-result v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_5

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/location/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c;

    iget-object v2, p0, Lcom/baidu/location/e;->l:Lcom/baidu/location/a;

    invoke-interface {v0, v2}, Lcom/baidu/location/c;->a(Lcom/baidu/location/a;)V

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/baidu/location/e;->r:Z

    iget-object v0, p0, Lcom/baidu/location/e;->l:Lcom/baidu/location/a;

    invoke-virtual {v0}, Lcom/baidu/location/a;->d()I

    move-result v0

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/baidu/location/e;->l:Lcom/baidu/location/a;

    invoke-virtual {v0}, Lcom/baidu/location/a;->d()I

    move-result v0

    if-eq v0, v5, :cond_4

    iput-boolean v3, p0, Lcom/baidu/location/e;->m:Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/baidu/location/e;Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x1

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/baidu/location/ak;->e()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/k;

    iget-object v1, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    invoke-virtual {v1, v0}, Lcom/baidu/location/k;->a(Lcom/baidu/location/k;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    iget v1, v1, Lcom/baidu/location/k;->d:I

    iget v2, v0, Lcom/baidu/location/k;->d:I

    if-eq v1, v2, :cond_6

    :try_start_0
    iget-object v2, p0, Lcom/baidu/location/e;->s:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v1, p0, Lcom/baidu/location/e;->o:Z

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/baidu/location/e;->i:Lcom/baidu/location/h;

    iget-object v3, p0, Lcom/baidu/location/e;->p:Lcom/baidu/location/j;

    invoke-virtual {v1, v3}, Lcom/baidu/location/h;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/e;->o:Z

    :cond_3
    iget v1, v0, Lcom/baidu/location/k;->d:I

    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_5

    iget-boolean v1, p0, Lcom/baidu/location/e;->o:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/baidu/location/e;->p:Lcom/baidu/location/j;

    if-nez v1, :cond_4

    new-instance v1, Lcom/baidu/location/j;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/baidu/location/j;-><init>(Lcom/baidu/location/e;B)V

    iput-object v1, p0, Lcom/baidu/location/e;->p:Lcom/baidu/location/j;

    :cond_4
    iget-object v1, p0, Lcom/baidu/location/e;->i:Lcom/baidu/location/h;

    iget-object v3, p0, Lcom/baidu/location/e;->p:Lcom/baidu/location/j;

    iget v4, v0, Lcom/baidu/location/k;->d:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/baidu/location/h;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/e;->o:Z

    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_1
    new-instance v1, Lcom/baidu/location/k;

    invoke-direct {v1, v0}, Lcom/baidu/location/k;-><init>(Lcom/baidu/location/k;)V

    iput-object v1, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    iget-object v0, p0, Lcom/baidu/location/e;->h:Landroid/os/Messenger;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    const/16 v1, 0xf

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/e;->j:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0}, Lcom/baidu/location/e;->f()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/baidu/location/e;->h:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/ak;->e()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/e;Landroid/os/Message;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "locStr"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on receive new location : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on receive new location : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->f()V

    new-instance v1, Lcom/baidu/location/a;

    invoke-direct {v1, v0}, Lcom/baidu/location/a;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/location/e;->l:Lcom/baidu/location/a;

    invoke-direct {p0, p2}, Lcom/baidu/location/e;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/e;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/location/e;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/e;->j:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/location/e;Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/c;

    iput-object v0, p0, Lcom/baidu/location/e;->v:Lcom/baidu/location/c;

    goto :goto_0
.end method

.method static synthetic b(Lcom/baidu/location/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/e;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/baidu/location/e;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Lcom/baidu/location/e;->f()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/location/e;Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/c;

    iget-object v1, p0, Lcom/baidu/location/e;->k:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/e;->k:Ljava/util/ArrayList;

    :cond_2
    iget-object v1, p0, Lcom/baidu/location/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/baidu/location/e;Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/c;

    iget-object v1, p0, Lcom/baidu/location/e;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/baidu/location/e;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/e;->r:Z

    return v0
.end method

.method static synthetic e(Lcom/baidu/location/e;)Lcom/baidu/location/k;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/location/e;Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/d;

    iget-object v1, p0, Lcom/baidu/location/e;->t:Lcom/baidu/location/i;

    invoke-virtual {v1, v0}, Lcom/baidu/location/i;->a(Lcom/baidu/location/d;)I

    goto :goto_0
.end method

.method private f()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "packName"

    iget-object v2, p0, Lcom/baidu/location/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "prodName"

    iget-object v2, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    iget-object v2, v2, Lcom/baidu/location/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "coorType"

    iget-object v2, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    iget-object v2, v2, Lcom/baidu/location/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "addrType"

    iget-object v2, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    iget-object v2, v2, Lcom/baidu/location/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Url"

    iget-object v2, p0, Lcom/baidu/location/e;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "openGPS"

    iget-object v2, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    iget-boolean v2, v2, Lcom/baidu/location/k;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "location_change_notify"

    iget-object v2, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    iget-boolean v2, v2, Lcom/baidu/location/k;->h:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "scanSpan"

    iget-object v2, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    iget v2, v2, Lcom/baidu/location/k;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "timeOut"

    iget-object v2, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    iget v2, v2, Lcom/baidu/location/k;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "priority"

    iget-object v2, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    iget v2, v2, Lcom/baidu/location/k;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "map"

    iget-object v2, p0, Lcom/baidu/location/e;->y:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "import"

    iget-object v2, p0, Lcom/baidu/location/e;->z:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/baidu/location/e;)Lcom/baidu/location/h;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/e;->i:Lcom/baidu/location/h;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/location/e;Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/d;

    iget-object v1, p0, Lcom/baidu/location/e;->t:Lcom/baidu/location/i;

    invoke-virtual {v1, v0}, Lcom/baidu/location/i;->b(Lcom/baidu/location/d;)I

    goto :goto_0
.end method

.method static synthetic g(Lcom/baidu/location/e;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/e;->s:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/location/e;Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "locStr"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/location/a;

    invoke-direct {v1, v0}, Lcom/baidu/location/a;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/e;->v:Lcom/baidu/location/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    invoke-virtual {v0}, Lcom/baidu/location/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/baidu/location/a;->d()I

    move-result v0

    const/16 v2, 0x41

    if-eq v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/e;->v:Lcom/baidu/location/c;

    invoke-interface {v0, v1}, Lcom/baidu/location/c;->a(Lcom/baidu/location/a;)V

    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/baidu/location/e;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e;->o:Z

    return v0
.end method

.method static synthetic i(Lcom/baidu/location/e;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/e;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/location/e;)V
    .locals 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/e;->f:Z

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/baidu/location/ak;->c()V

    iget-object v0, p0, Lcom/baidu/location/e;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_bdls_v2.9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/e;->w:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/location/e;->g:Landroid/content/Context;

    const-class v2, Lcom/baidu/location/f;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/location/k;

    invoke-direct {v1}, Lcom/baidu/location/k;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/e;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/location/e;->A:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e;->f:Z

    goto :goto_0
.end method

.method static synthetic k(Lcom/baidu/location/e;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/baidu/location/e;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/e;->h:Landroid/os/Messenger;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xc

    invoke-static {v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/e;->j:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/e;->h:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/baidu/location/e;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/location/e;->A:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lcom/baidu/location/e;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/location/e;->o:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/baidu/location/e;->i:Lcom/baidu/location/h;

    iget-object v2, p0, Lcom/baidu/location/e;->p:Lcom/baidu/location/j;

    invoke-virtual {v0, v2}, Lcom/baidu/location/h;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e;->o:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/baidu/location/e;->t:Lcom/baidu/location/i;

    invoke-virtual {v0}, Lcom/baidu/location/i;->a()V

    iput-object v4, p0, Lcom/baidu/location/e;->h:Landroid/os/Messenger;

    invoke-static {}, Lcom/baidu/location/ak;->d()V

    iput-boolean v3, p0, Lcom/baidu/location/e;->f:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic l(Lcom/baidu/location/e;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/e;->h:Landroid/os/Messenger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x16

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/e;->j:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/baidu/location/e;->h:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic m(Lcom/baidu/location/e;)V
    .locals 5

    iget-object v0, p0, Lcom/baidu/location/e;->h:Landroid/os/Messenger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/location/e;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    iget-boolean v0, v0, Lcom/baidu/location/k;->h:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x16

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/e;->j:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/baidu/location/e;->h:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/e;->b:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/e;->m:Z

    invoke-static {}, Lcom/baidu/location/ak;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/baidu/location/e;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    iget v0, v0, Lcom/baidu/location/k;->d:I

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/baidu/location/e;->o:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/e;->p:Lcom/baidu/location/j;

    if-nez v0, :cond_3

    new-instance v0, Lcom/baidu/location/j;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/baidu/location/j;-><init>(Lcom/baidu/location/e;B)V

    iput-object v0, p0, Lcom/baidu/location/e;->p:Lcom/baidu/location/j;

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/e;->i:Lcom/baidu/location/h;

    iget-object v2, p0, Lcom/baidu/location/e;->p:Lcom/baidu/location/j;

    iget-object v3, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    iget v3, v3, Lcom/baidu/location/k;->d:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/baidu/location/h;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/e;->o:Z

    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic n(Lcom/baidu/location/e;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/e;->j:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/baidu/location/e;->h:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic o(Lcom/baidu/location/e;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/e;->h:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/baidu/location/e;->j:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v2, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/location/e;->h:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/e;->c:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/e;->n:Z

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "num"

    iget-object v3, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    iget v3, v3, Lcom/baidu/location/k;->m:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "distance"

    iget-object v3, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    iget v3, v3, Lcom/baidu/location/k;->l:F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "extraInfo"

    iget-object v3, p0, Lcom/baidu/location/e;->e:Lcom/baidu/location/k;

    iget-boolean v3, v3, Lcom/baidu/location/k;->k:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/e;->i:Lcom/baidu/location/h;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/baidu/location/h;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/baidu/location/c;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/e;->i:Lcom/baidu/location/h;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/location/h;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/baidu/location/k;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/baidu/location/k;

    invoke-direct {p1}, Lcom/baidu/location/k;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/e;->i:Lcom/baidu/location/h;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/baidu/location/h;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b()I
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/e;->h:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/e;->j:Landroid/os/Messenger;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/e;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/e;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-object v0, p0, Lcom/baidu/location/e;->i:Lcom/baidu/location/h;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/location/h;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/baidu/location/c;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/e;->i:Lcom/baidu/location/h;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/baidu/location/h;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final c(Lcom/baidu/location/c;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/e;->i:Lcom/baidu/location/h;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/baidu/location/h;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/e;->f:Z

    return v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/e;->i:Lcom/baidu/location/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/h;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/e;->i:Lcom/baidu/location/h;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/location/h;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
