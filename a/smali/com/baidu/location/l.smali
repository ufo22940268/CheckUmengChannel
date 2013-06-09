.class final Lcom/baidu/location/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/ArrayList;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "baidu_location_service"

    sput-object v0, Lcom/baidu/location/l;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/l;->b:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/baidu/location/l;->c:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/baidu/location/l;->d:Z

    iput-boolean v0, p0, Lcom/baidu/location/l;->e:Z

    iput-object p1, p0, Lcom/baidu/location/l;->c:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/l;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/os/Messenger;)Lcom/baidu/location/m;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/location/l;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/m;

    iget-object v3, v0, Lcom/baidu/location/m;->b:Landroid/os/Messenger;

    invoke-virtual {v3, p1}, Landroid/os/Messenger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/location/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/m;

    iget-object v6, v0, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget-boolean v6, v6, Lcom/baidu/location/k;->c:Z

    if-eqz v6, :cond_0

    move v3, v4

    :cond_0
    iget-object v0, v0, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget-boolean v0, v0, Lcom/baidu/location/k;->h:Z

    if-eqz v0, :cond_6

    move v0, v4

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    sput-boolean v1, Lcom/baidu/location/ak;->a:Z

    iget-boolean v0, p0, Lcom/baidu/location/l;->d:Z

    if-eq v0, v3, :cond_2

    iput-boolean v3, p0, Lcom/baidu/location/l;->d:Z

    iget-object v0, p0, Lcom/baidu/location/l;->c:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/m;

    iget-object v0, v0, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget-object v0, v0, Lcom/baidu/location/k;->f:Ljava/lang/String;

    const-string v3, "kuikedefancaiburudashahaochi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v4

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Lcom/baidu/location/l;->e:Z

    if-eq v0, v2, :cond_5

    iput-boolean v2, p0, Lcom/baidu/location/l;->e:Z

    iget-object v0, p0, Lcom/baidu/location/l;->c:Landroid/os/Handler;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    invoke-virtual {p0}, Lcom/baidu/location/l;->c()V

    return-void

    :cond_6
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/baidu/location/l;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/baidu/location/m;

    invoke-direct {v0, p0, p1}, Lcom/baidu/location/m;-><init>(Lcom/baidu/location/l;Landroid/os/Message;)V

    iget-object v1, v0, Lcom/baidu/location/m;->b:Landroid/os/Messenger;

    invoke-direct {p0, v1}, Lcom/baidu/location/l;->a(Landroid/os/Messenger;)Lcom/baidu/location/m;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/baidu/location/m;->a(Lcom/baidu/location/m;I)V

    :goto_1
    invoke-direct {p0}, Lcom/baidu/location/l;->e()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/baidu/location/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/baidu/location/l;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/baidu/location/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/baidu/location/m;->a(Lcom/baidu/location/m;I)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/location/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/m;

    invoke-virtual {v0, p1}, Lcom/baidu/location/m;->a(Ljava/lang/String;)V

    iget v3, v0, Lcom/baidu/location/m;->d:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/m;

    sget-object v2, Lcom/baidu/location/l;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-object v2, p0, Lcom/baidu/location/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/location/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/m;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/location/m;->a(Ljava/lang/String;I)V

    iget v3, v0, Lcom/baidu/location/m;->d:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/m;

    sget-object v2, Lcom/baidu/location/l;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-object v2, p0, Lcom/baidu/location/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/baidu/location/l;->a(Landroid/os/Messenger;)Lcom/baidu/location/m;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/baidu/location/m;->a(Ljava/lang/String;)V

    iget v1, v0, Lcom/baidu/location/m;->d:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/location/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/baidu/location/l;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/l;->d:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x100

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v0, p0, Lcom/baidu/location/l;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/m;

    iget-object v2, v0, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget-object v2, v2, Lcom/baidu/location/k;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget-object v2, v2, Lcom/baidu/location/k;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v2, v0, Lcom/baidu/location/m;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/baidu/location/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&prod="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/baidu/location/l;->a(Landroid/os/Messenger;)Lcom/baidu/location/m;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/baidu/location/l;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/baidu/location/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unregistered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-object v1, p0, Lcom/baidu/location/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/baidu/location/l;->e()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/m;

    invoke-virtual {v0, p1}, Lcom/baidu/location/m;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/m;

    invoke-virtual {v0}, Lcom/baidu/location/m;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Landroid/os/Message;)Z
    .locals 9

    const/16 v8, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v2}, Lcom/baidu/location/l;->a(Landroid/os/Messenger;)Lcom/baidu/location/m;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v3, v2, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget v3, v3, Lcom/baidu/location/k;->d:I

    iget-object v4, v2, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "scanSpan"

    iget-object v7, v2, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget v7, v7, Lcom/baidu/location/k;->d:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/baidu/location/k;->d:I

    iget-object v4, v2, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget v4, v4, Lcom/baidu/location/k;->d:I

    if-ge v4, v8, :cond_1

    sput-boolean v1, Lcom/baidu/location/ak;->i:Z

    :goto_1
    iget-object v4, v2, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget v4, v4, Lcom/baidu/location/k;->d:I

    const/16 v5, 0x3e7

    if-le v4, v5, :cond_4

    if-ge v3, v8, :cond_4

    :goto_2
    iget-object v1, v2, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "openGPS"

    iget-object v5, v2, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget-boolean v5, v5, Lcom/baidu/location/k;->c:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/baidu/location/k;->c:Z

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "coorType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    if-eqz v1, :cond_2

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_3
    iput-object v1, v3, Lcom/baidu/location/k;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "addrType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    if-eqz v1, :cond_3

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_4
    iput-object v1, v3, Lcom/baidu/location/k;->b:Ljava/lang/String;

    iget-object v1, v2, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget-object v1, v1, Lcom/baidu/location/k;->b:Ljava/lang/String;

    sput-object v1, Lcom/baidu/location/ak;->g:Ljava/lang/String;

    iget-object v1, v2, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "timeOut"

    iget-object v5, v2, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget v5, v5, Lcom/baidu/location/k;->e:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/k;->e:I

    iget-object v1, v2, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "location_change_notify"

    iget-object v5, v2, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget-boolean v5, v5, Lcom/baidu/location/k;->h:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/baidu/location/k;->h:Z

    iget-object v1, v2, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "priority"

    iget-object v2, v2, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget v2, v2, Lcom/baidu/location/k;->g:I

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/baidu/location/k;->g:I

    invoke-direct {p0}, Lcom/baidu/location/l;->e()V

    move v1, v0

    goto/16 :goto_0

    :cond_1
    sput-boolean v0, Lcom/baidu/location/ak;->i:Z

    goto/16 :goto_1

    :cond_2
    iget-object v1, v2, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget-object v1, v1, Lcom/baidu/location/k;->a:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object v1, v2, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget-object v1, v1, Lcom/baidu/location/k;->b:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move v0, v1

    goto/16 :goto_2
.end method

.method public final d(Landroid/os/Message;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, Lcom/baidu/location/l;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v1}, Lcom/baidu/location/l;->a(Landroid/os/Messenger;)Lcom/baidu/location/m;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "num"

    iget-object v4, v1, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget v4, v4, Lcom/baidu/location/k;->m:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/baidu/location/k;->m:I

    iget-object v0, v1, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "distance"

    iget-object v4, v1, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget v4, v4, Lcom/baidu/location/k;->l:F

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lcom/baidu/location/k;->l:F

    iget-object v0, v1, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extraInfo"

    iget-object v4, v1, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget-boolean v4, v4, Lcom/baidu/location/k;->k:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/baidu/location/k;->k:Z

    iget-object v0, v1, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iput-boolean v5, v0, Lcom/baidu/location/k;->j:Z

    const-string v0, "&poi=%.1f|%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget v4, v4, Lcom/baidu/location/k;->l:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, v1, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget v3, v3, Lcom/baidu/location/k;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget-boolean v1, v1, Lcom/baidu/location/k;->k:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final e(Landroid/os/Message;)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v1}, Lcom/baidu/location/l;->a(Landroid/os/Messenger;)Lcom/baidu/location/m;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/baidu/location/m;->c:Lcom/baidu/location/k;

    iget v0, v0, Lcom/baidu/location/k;->g:I

    goto :goto_0
.end method
