.class public final Lcom/baidu/location/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;

.field private c:F

.field private d:Lcom/baidu/location/a;

.field private e:J

.field private f:Lcom/baidu/location/e;

.field private g:Landroid/content/Context;

.field private h:I

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Landroid/app/PendingIntent;

.field private m:Landroid/app/AlarmManager;

.field private n:Lcom/baidu/location/i$b;

.field private o:Lcom/baidu/location/aj;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/location/e;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "baidu_location_service"

    iput-object v0, p0, Lcom/baidu/location/i;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/i;->b:Ljava/util/ArrayList;

    const v0, 0x7f7fffff

    iput v0, p0, Lcom/baidu/location/i;->c:F

    iput-object v1, p0, Lcom/baidu/location/i;->d:Lcom/baidu/location/a;

    iput-wide v3, p0, Lcom/baidu/location/i;->e:J

    iput-object v1, p0, Lcom/baidu/location/i;->f:Lcom/baidu/location/e;

    iput-object v1, p0, Lcom/baidu/location/i;->g:Landroid/content/Context;

    iput v2, p0, Lcom/baidu/location/i;->h:I

    iput-wide v3, p0, Lcom/baidu/location/i;->i:J

    iput-boolean v2, p0, Lcom/baidu/location/i;->j:Z

    iput-boolean v2, p0, Lcom/baidu/location/i;->k:Z

    iput-object v1, p0, Lcom/baidu/location/i;->l:Landroid/app/PendingIntent;

    iput-object v1, p0, Lcom/baidu/location/i;->m:Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/baidu/location/i;->n:Lcom/baidu/location/i$b;

    new-instance v0, Lcom/baidu/location/aj;

    invoke-direct {v0, p0}, Lcom/baidu/location/aj;-><init>(Lcom/baidu/location/i;)V

    iput-object v0, p0, Lcom/baidu/location/i;->o:Lcom/baidu/location/aj;

    iput-boolean v2, p0, Lcom/baidu/location/i;->p:Z

    iput-object p1, p0, Lcom/baidu/location/i;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/location/i;->f:Lcom/baidu/location/e;

    iget-object v0, p0, Lcom/baidu/location/i;->f:Lcom/baidu/location/e;

    iget-object v1, p0, Lcom/baidu/location/i;->o:Lcom/baidu/location/aj;

    invoke-virtual {v0, v1}, Lcom/baidu/location/e;->a(Lcom/baidu/location/c;)V

    iget-object v0, p0, Lcom/baidu/location/i;->g:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/baidu/location/i;->m:Landroid/app/AlarmManager;

    new-instance v0, Lcom/baidu/location/i$b;

    invoke-direct {v0, p0}, Lcom/baidu/location/i$b;-><init>(Lcom/baidu/location/i;)V

    iput-object v0, p0, Lcom/baidu/location/i;->n:Lcom/baidu/location/i$b;

    iput-boolean v2, p0, Lcom/baidu/location/i;->p:Z

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(J)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/baidu/location/i;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/i;->m:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/baidu/location/i;->l:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/i;->g:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.com.baidu.location.TIMER.NOTIFY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x800

    invoke-static {v0, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/i;->l:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/baidu/location/i;->m:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    iget-object v3, p0, Lcom/baidu/location/i;->l:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/baidu/location/i;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "timer start:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/i;Lcom/baidu/location/a;)V
    .locals 12

    iget-object v0, p0, Lcom/baidu/location/i;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/i;->j:Z

    invoke-virtual {p1}, Lcom/baidu/location/a;->d()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/baidu/location/a;->d()I

    move-result v0

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/baidu/location/a;->d()I

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_1

    const-wide/32 v0, 0x1d4c0

    invoke-direct {p0, v0, v1}, Lcom/baidu/location/i;->a(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/i;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/i;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/baidu/location/i;->d:Lcom/baidu/location/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/i;->e:J

    const/4 v0, 0x1

    new-array v8, v0, [F

    const v0, 0x7f7fffff

    iget-object v1, p0, Lcom/baidu/location/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v10, v0

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/baidu/location/d;

    invoke-virtual {p1}, Lcom/baidu/location/a;->a()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/baidu/location/a;->b()D

    move-result-wide v2

    iget-wide v4, v9, Lcom/baidu/location/d;->f:D

    iget-wide v6, v9, Lcom/baidu/location/d;->g:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    iget v1, v9, Lcom/baidu/location/d;->c:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/baidu/location/a;->c()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/baidu/location/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "distance:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    cmpg-float v1, v0, v10

    if-gez v1, :cond_2

    move v10, v0

    goto :goto_1

    :cond_3
    iget v0, v9, Lcom/baidu/location/d;->h:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    iget v0, v9, Lcom/baidu/location/d;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/baidu/location/d;->h:I

    const/4 v0, 0x0

    aget v0, v8, v0

    invoke-static {v0}, Lcom/baidu/location/d;->a(F)V

    iget v0, v9, Lcom/baidu/location/d;->h:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/i;->k:Z

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/baidu/location/i;->c:F

    cmpg-float v0, v10, v0

    if-gez v0, :cond_5

    iput v10, p0, Lcom/baidu/location/i;->c:F

    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/i;->h:I

    invoke-direct {p0}, Lcom/baidu/location/i;->b()V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/baidu/location/i;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/i;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b()V
    .locals 7

    const/16 v4, 0x2710

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/location/i;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v1, v2

    :cond_1
    if-nez v1, :cond_4

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/d;

    iget v0, v0, Lcom/baidu/location/d;->h:I

    const/4 v6, 0x3

    if-ge v0, v6, :cond_a

    move v0, v3

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/baidu/location/i;->c:F

    const v1, 0x459c4000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    const v0, 0x927c0

    :goto_3
    iget-boolean v1, p0, Lcom/baidu/location/i;->k:Z

    if-eqz v1, :cond_9

    iput-boolean v2, p0, Lcom/baidu/location/i;->k:Z

    :goto_4
    iget v0, p0, Lcom/baidu/location/i;->h:I

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/baidu/location/i;->i:J

    iget v5, p0, Lcom/baidu/location/i;->h:I

    int-to-long v5, v5

    add-long/2addr v0, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v0, v5

    int-to-long v5, v4

    cmp-long v0, v5, v0

    if-lez v0, :cond_5

    move v3, v2

    :cond_5
    if-eqz v3, :cond_2

    iput v4, p0, Lcom/baidu/location/i;->h:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/i;->i:J

    iget v0, p0, Lcom/baidu/location/i;->h:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/baidu/location/i;->a(J)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/baidu/location/i;->c:F

    const/high16 v1, 0x447a

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    const v0, 0x1d4c0

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/baidu/location/i;->c:F

    const/high16 v1, 0x43fa

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    const v0, 0xea60

    goto :goto_3

    :cond_8
    move v0, v4

    goto :goto_3

    :cond_9
    move v4, v0

    goto :goto_4

    :cond_a
    move v0, v1

    goto :goto_2
.end method

.method static synthetic c(Lcom/baidu/location/i;)Lcom/baidu/location/e;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/i;->f:Lcom/baidu/location/e;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/baidu/location/d;)I
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/baidu/location/i;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/i;->b:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v9, p1, Lcom/baidu/location/d;->i:Z

    iput-object p0, p1, Lcom/baidu/location/d;->j:Lcom/baidu/location/i;

    iget-boolean v0, p0, Lcom/baidu/location/i;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/i;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/location/i;->n:Lcom/baidu/location/i$b;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.com.baidu.location.TIMER.NOTIFY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v9, p0, Lcom/baidu/location/i;->p:Z

    :cond_1
    iget-object v0, p1, Lcom/baidu/location/d;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    :goto_0
    return v9

    :cond_2
    iget-object v0, p1, Lcom/baidu/location/d;->e:Ljava/lang/String;

    const-string v1, "gcj02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-wide v0, p1, Lcom/baidu/location/d;->b:D

    iget-wide v2, p1, Lcom/baidu/location/d;->a:D

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/baidu/location/d;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "2gcj"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/location/Jni;->a(DDLjava/lang/String;)[D

    move-result-object v0

    aget-wide v1, v0, v10

    iput-wide v1, p1, Lcom/baidu/location/d;->g:D

    aget-wide v0, v0, v9

    iput-wide v0, p1, Lcom/baidu/location/d;->f:D

    iget-object v0, p0, Lcom/baidu/location/i;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/baidu/location/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2gcj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-object v0, p0, Lcom/baidu/location/i;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "coor:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/baidu/location/d;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/baidu/location/d;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/baidu/location/d;->g:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/baidu/location/d;->f:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/i;->d:Lcom/baidu/location/a;

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/i;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/baidu/location/i;->f:Lcom/baidu/location/e;

    invoke-virtual {v0}, Lcom/baidu/location/e;->a()V

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/baidu/location/i;->b()V

    goto/16 :goto_0

    :cond_6
    new-array v8, v9, [F

    iget-object v0, p0, Lcom/baidu/location/i;->d:Lcom/baidu/location/a;

    invoke-virtual {v0}, Lcom/baidu/location/a;->a()D

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/i;->d:Lcom/baidu/location/a;

    invoke-virtual {v2}, Lcom/baidu/location/a;->b()D

    move-result-wide v2

    iget-wide v4, p1, Lcom/baidu/location/d;->f:D

    iget-wide v6, p1, Lcom/baidu/location/d;->g:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v10

    iget v1, p1, Lcom/baidu/location/d;->c:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/baidu/location/i;->d:Lcom/baidu/location/a;

    invoke-virtual {v1}, Lcom/baidu/location/a;->c()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_7

    iget v1, p0, Lcom/baidu/location/i;->c:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    iput v0, p0, Lcom/baidu/location/i;->c:F

    goto :goto_1

    :cond_7
    iget v0, p1, Lcom/baidu/location/d;->h:I

    if-ge v0, v11, :cond_5

    iget v0, p1, Lcom/baidu/location/d;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/baidu/location/d;->h:I

    iget-object v0, p0, Lcom/baidu/location/i;->d:Lcom/baidu/location/a;

    aget v0, v8, v10

    invoke-static {v0}, Lcom/baidu/location/d;->a(F)V

    iget v0, p1, Lcom/baidu/location/d;->h:I

    if-ge v0, v11, :cond_5

    iput-boolean v9, p0, Lcom/baidu/location/i;->k:Z

    goto :goto_1
.end method

.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/location/i;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/i;->m:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/baidu/location/i;->l:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/i;->d:Lcom/baidu/location/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/i;->e:J

    iget-boolean v0, p0, Lcom/baidu/location/i;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/i;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-object v0, p0, Lcom/baidu/location/i;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/location/i;->n:Lcom/baidu/location/i$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/i;->p:Z

    return-void
.end method

.method public final b(Lcom/baidu/location/d;)I
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/i;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/baidu/location/i;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/i;->m:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/baidu/location/i;->l:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method