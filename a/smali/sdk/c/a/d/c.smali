.class public final Lsdk/c/a/d/c;
.super Lsdk/c/a/e/d;


# static fields
.field static d:J


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/os/Handler;

.field public c:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    const v0, -0x7ffffffb

    invoke-direct {p0, v0}, Lsdk/c/a/e/d;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsdk/c/a/d/c;->c:Z

    iput-object p1, p0, Lsdk/c/a/d/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lsdk/c/a/d/c;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsdk/c/a/d/c;->z:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Lsdk/c/a/d/c;
    .locals 7

    const-wide/16 v5, 0x4e20

    new-instance v0, Lsdk/c/a/d/c;

    invoke-direct {v0, p0, p1}, Lsdk/c/a/d/c;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lsdk/c/a/d/c;->q()V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lsdk/c/a/d/c;->d:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    sget-wide v3, Lsdk/c/a/d/c;->d:J

    add-long/2addr v3, v5

    sput-wide v3, Lsdk/c/a/d/c;->d:J

    sget-wide v3, Lsdk/c/a/d/c;->d:J

    sub-long v1, v3, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lsdk/c/a/d/c;->a(JLjava/util/concurrent/TimeUnit;)I

    :goto_1
    return-object v0

    :cond_1
    const/4 v1, 0x1

    iput v1, v0, Lsdk/c/a/d/c;->e:I

    iput-object p3, v0, Lsdk/c/a/d/c;->f:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, v0, Lsdk/c/a/d/c;->g:I

    iput-object p2, v0, Lsdk/c/a/d/c;->h:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sput-wide v1, Lsdk/c/a/d/c;->d:J

    goto :goto_1
.end method


# virtual methods
.method public final a_()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lsdk/c/a/e/d;->a_()V

    iput-object v0, p0, Lsdk/c/a/d/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lsdk/c/a/d/c;->h:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    const v0, -0x7ffffffb

    return v0
.end method

.method public final c()V
    .locals 3

    invoke-super {p0}, Lsdk/c/a/e/d;->c()V

    iget-object v0, p0, Lsdk/c/a/d/c;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Lsdk/c/a/d/a;

    invoke-direct {v0}, Lsdk/c/a/d/a;-><init>()V

    iget-object v1, p0, Lsdk/c/a/d/c;->h:Ljava/lang/String;

    iput-object v1, v0, Lsdk/c/a/d/a;->b:Ljava/lang/String;

    iget v1, p0, Lsdk/c/a/d/c;->e:I

    iput v1, v0, Lsdk/c/a/d/a;->a:I

    const/4 v1, 0x1

    iput v1, v0, Lsdk/c/a/d/a;->c:I

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lsdk/c/a/b/d;->d()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "msgID"

    iget v2, p0, Lsdk/c/a/d/c;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "port"

    iget v2, p0, Lsdk/c/a/d/c;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "address"

    iget-object v2, p0, Lsdk/c/a/d/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    iget-object v2, p0, Lsdk/c/a/d/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lsdk/c/a/d/c;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected final f()V
    .locals 0

    return-void
.end method
