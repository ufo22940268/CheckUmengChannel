.class final Lcom/baidu/location/n;
.super Ljava/lang/Object;


# static fields
.field private static A:Ljava/io/File;

.field private static B:Ljava/lang/StringBuffer;

.field private static C:Z

.field private static D:I

.field private static E:I

.field private static F:J

.field private static G:J

.field private static H:J

.field private static I:D

.field private static J:D

.field private static K:I

.field private static L:I

.field private static M:I

.field private static h:I

.field private static x:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# instance fields
.field private final a:J

.field private b:Landroid/content/Context;

.field private c:Landroid/location/LocationManager;

.field private d:Landroid/location/Location;

.field private e:Lcom/baidu/location/p;

.field private f:Landroid/location/GpsStatus;

.field private g:Lcom/baidu/location/o;

.field private i:J

.field private j:J

.field private k:Z

.field private l:Landroid/os/Handler;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:J

.field private final q:I

.field private r:Z

.field private s:Z

.field private t:Ljava/util/List;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private y:Lcom/baidu/location/s;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    sput v3, Lcom/baidu/location/n;->h:I

    sput-object v8, Lcom/baidu/location/n;->x:Ljava/lang/String;

    const-string v0, "Temp_in.dat"

    sput-object v0, Lcom/baidu/location/n;->z:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/f;->a:Ljava/lang/String;

    sget-object v2, Lcom/baidu/location/n;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/location/n;->A:Ljava/io/File;

    sput-object v8, Lcom/baidu/location/n;->B:Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/location/n;->C:Z

    sput v3, Lcom/baidu/location/n;->D:I

    sput v3, Lcom/baidu/location/n;->E:I

    sput-wide v4, Lcom/baidu/location/n;->F:J

    sput-wide v4, Lcom/baidu/location/n;->G:J

    sput-wide v4, Lcom/baidu/location/n;->H:J

    sput-wide v6, Lcom/baidu/location/n;->I:D

    sput-wide v6, Lcom/baidu/location/n;->J:D

    sput v3, Lcom/baidu/location/n;->K:I

    sput v3, Lcom/baidu/location/n;->L:I

    sput v3, Lcom/baidu/location/n;->M:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/baidu/location/n;->a:J

    iput-object v2, p0, Lcom/baidu/location/n;->c:Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/baidu/location/n;->e:Lcom/baidu/location/p;

    iput-object v2, p0, Lcom/baidu/location/n;->g:Lcom/baidu/location/o;

    iput-wide v4, p0, Lcom/baidu/location/n;->i:J

    iput-wide v4, p0, Lcom/baidu/location/n;->j:J

    iput-boolean v3, p0, Lcom/baidu/location/n;->k:Z

    iput-object v2, p0, Lcom/baidu/location/n;->l:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/baidu/location/n;->m:Z

    iput-object v2, p0, Lcom/baidu/location/n;->n:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/baidu/location/n;->o:Z

    iput-wide v4, p0, Lcom/baidu/location/n;->p:J

    const/16 v0, 0x190

    iput v0, p0, Lcom/baidu/location/n;->q:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/n;->r:Z

    iput-boolean v3, p0, Lcom/baidu/location/n;->s:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/n;->t:Ljava/util/List;

    iput-object v2, p0, Lcom/baidu/location/n;->u:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/n;->v:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/n;->w:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/n;->y:Lcom/baidu/location/s;

    iput-object p1, p0, Lcom/baidu/location/n;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/location/n;->l:Landroid/os/Handler;

    :try_start_0
    sget-object v0, Lcom/baidu/location/ak;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/baidu/location/s;

    sget-object v1, Lcom/baidu/location/ak;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/baidu/location/s;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/location/n;->y:Lcom/baidu/location/s;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/baidu/location/s;

    const-string v1, "NULL"

    invoke-direct {v0, v1}, Lcom/baidu/location/s;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/location/n;->y:Lcom/baidu/location/s;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/baidu/location/n;->y:Lcom/baidu/location/s;

    goto :goto_0
.end method

.method private static A()V
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/location/n;->C:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/n;->B:Ljava/lang/StringBuffer;

    sput v1, Lcom/baidu/location/n;->D:I

    sput v1, Lcom/baidu/location/n;->E:I

    sput-wide v2, Lcom/baidu/location/n;->F:J

    sput-wide v2, Lcom/baidu/location/n;->G:J

    sput-wide v2, Lcom/baidu/location/n;->H:J

    sput-wide v4, Lcom/baidu/location/n;->I:D

    sput-wide v4, Lcom/baidu/location/n;->J:D

    sput v1, Lcom/baidu/location/n;->K:I

    sput v1, Lcom/baidu/location/n;->L:I

    sput v1, Lcom/baidu/location/n;->M:I

    return-void
.end method

.method static synthetic a(D)D
    .locals 0

    sput-wide p0, Lcom/baidu/location/n;->I:D

    return-wide p0
.end method

.method static synthetic a(I)I
    .locals 0

    sput p0, Lcom/baidu/location/n;->h:I

    return p0
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lcom/baidu/location/n;->F:J

    return-wide p0
.end method

.method static synthetic a(Lcom/baidu/location/n;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/n;->j:J

    return-wide p1
.end method

.method static synthetic a(Lcom/baidu/location/n;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/n;->f:Landroid/location/GpsStatus;

    return-object p1
.end method

.method public static a(Landroid/location/Location;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/baidu/location/n;->c(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&g_tp=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/n;->u:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/baidu/location/n;->x:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    sput-object p0, Lcom/baidu/location/n;->B:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/location/n;Landroid/location/Location;)V
    .locals 11

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iput-object p1, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    iget-object v0, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/n;->n:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/location/n;->y:Lcom/baidu/location/s;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/n;->y:Lcom/baidu/location/s;

    iget-object v1, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/baidu/location/s;->a(Lcom/baidu/location/s;Landroid/location/Location;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/baidu/location/n;->l:Landroid/os/Handler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    iget-object v2, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x400ccccccccccccdL

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const-string v3, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_n=%d&ll_t=%d"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getBearing()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget v6, Lcom/baidu/location/n;->h:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/n;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    iget-object v0, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    sget-boolean v0, Lcom/baidu/location/ak;->ad:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-wide v7, 0x4052496801711948L

    cmpg-double v1, v3, v7

    if-ltz v1, :cond_3

    const-wide v7, 0x4060e81600f34507L

    cmpl-double v1, v3, v7

    if-gtz v1, :cond_3

    const-wide v7, 0x404b212096787ce9L

    cmpl-double v1, v5, v7

    if-gtz v1, :cond_3

    const-wide v7, 0x402d35ae81882adcL

    cmpg-double v1, v5, v7

    if-ltz v1, :cond_3

    const/high16 v1, 0x4190

    cmpl-float v1, v2, v1

    if-lez v1, :cond_5

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_2
    sget v1, Lcom/baidu/location/ak;->p:I

    if-eq v1, v0, :cond_0

    sput v0, Lcom/baidu/location/ak;->p:I

    :try_start_1
    sget v0, Lcom/baidu/location/ak;->p:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/baidu/location/n;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/n;->e:Lcom/baidu/location/p;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/baidu/location/n;->c:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x3f80

    iget-object v5, p0, Lcom/baidu/location/n;->e:Lcom/baidu/location/p;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/baidu/location/ak;->e()V

    sget-wide v1, Lcom/baidu/location/ak;->n:D

    sub-double v1, v3, v1

    sget-wide v7, Lcom/baidu/location/ak;->o:D

    sub-double/2addr v7, v5

    const-wide v9, 0x408f400000000000L

    mul-double/2addr v1, v9

    double-to-int v1, v1

    const-wide v9, 0x408f400000000000L

    mul-double/2addr v7, v9

    double-to-int v2, v7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "check...gps ..."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    if-lez v1, :cond_6

    const/16 v7, 0x32

    if-ge v1, v7, :cond_6

    if-lez v2, :cond_6

    const/16 v7, 0x32

    if-ge v2, v7, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "check...gps ..."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    mul-int/lit8 v2, v2, 0x32

    add-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x2

    and-int/lit8 v1, v1, 0x3

    sget-boolean v3, Lcom/baidu/location/ak;->r:Z

    if-eqz v3, :cond_4

    sget-object v0, Lcom/baidu/location/ak;->q:[B

    aget-byte v0, v0, v2

    mul-int/lit8 v1, v1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check gps scacity..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    goto/16 :goto_2

    :cond_6
    const-string v1, "&ll=%.5f|%.5f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&im="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/location/ak;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-wide v3, Lcom/baidu/location/ak;->l:D

    sput-wide v5, Lcom/baidu/location/ak;->m:D

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/baidu/location/ae;->a(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/baidu/location/n;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/n;->e:Lcom/baidu/location/p;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/baidu/location/n;->c:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x40a0

    iget-object v5, p0, Lcom/baidu/location/n;->e:Lcom/baidu/location/p;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method private a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/baidu/location/n;->o:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/location/n;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/baidu/location/ak;->b:Z

    if-eq v0, p1, :cond_0

    sput-boolean p1, Lcom/baidu/location/ak;->b:Z

    sget-boolean v0, Lcom/baidu/location/ak;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/n;->l:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method static synthetic a(III)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/baidu/location/n;->b(III)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/location/Location;Landroid/location/Location;Z)Z
    .locals 6

    const/high16 v5, 0x40a0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    if-eqz p2, :cond_4

    sget v3, Lcom/baidu/location/ak;->p:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    cmpg-float v3, v2, v5

    if-gez v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    sget v4, Lcom/baidu/location/ak;->F:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_5

    sget v2, Lcom/baidu/location/ak;->H:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    sget v4, Lcom/baidu/location/ak;->E:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    sget v2, Lcom/baidu/location/ak;->G:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    cmpl-float v2, v3, v5

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/n;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/n;->o:Z

    return v0
.end method

.method static synthetic a(Lcom/baidu/location/n;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/n;->k:Z

    return p1
.end method

.method static synthetic b(D)D
    .locals 0

    sput-wide p0, Lcom/baidu/location/n;->J:D

    return-wide p0
.end method

.method static synthetic b(I)I
    .locals 0

    sput p0, Lcom/baidu/location/n;->E:I

    return p0
.end method

.method static synthetic b(J)J
    .locals 0

    sput-wide p0, Lcom/baidu/location/n;->G:J

    return-wide p0
.end method

.method static synthetic b(Lcom/baidu/location/n;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/n;->i:J

    return-wide p1
.end method

.method static synthetic b(Lcom/baidu/location/n;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/n;->c:Landroid/location/LocationManager;

    return-object v0
.end method

.method public static b(Landroid/location/Location;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/baidu/location/n;->c(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/n;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/baidu/location/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/n;->v:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/location/n;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/n;->a(Z)V

    return-void
.end method

.method private static b(III)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    sget v1, Lcom/baidu/location/ak;->U:I

    if-le p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p1, :cond_0

    add-int/lit8 v1, p0, 0x1

    if-gt p1, v1, :cond_0

    if-lez p2, :cond_0

    add-int/lit8 v1, p0, 0x1

    if-gt p2, v1, :cond_0

    sget v1, Lcom/baidu/location/ak;->U:I

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(I)I
    .locals 0

    sput p0, Lcom/baidu/location/n;->K:I

    return p0
.end method

.method static synthetic c(J)J
    .locals 0

    sput-wide p0, Lcom/baidu/location/n;->H:J

    return-wide p0
.end method

.method static synthetic c(Lcom/baidu/location/n;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/n;->p:J

    return-wide p1
.end method

.method static synthetic c(Lcom/baidu/location/n;)Landroid/location/GpsStatus;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/n;->f:Landroid/location/GpsStatus;

    return-object v0
.end method

.method private static c(Landroid/location/Location;)Ljava/lang/String;
    .locals 9

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x400ccccccccccccdL

    mul-double/2addr v0, v2

    double-to-float v2, v0

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    :goto_1
    float-to-int v3, v0

    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    :goto_2
    const-string v4, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_r=%d&ll_n=%d&ll_h=%.2f&ll_t=%d"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x3

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x5

    sget v3, Lcom/baidu/location/n;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x7

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    const-wide/16 v6, 0x3e8

    div-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/high16 v0, -0x4080

    goto :goto_1

    :cond_2
    const-wide v0, 0x4081580000000000L

    goto :goto_2
.end method

.method static synthetic c(Lcom/baidu/location/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/n;->w:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/baidu/location/n;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/n;->s:Z

    return p1
.end method

.method static synthetic d(I)I
    .locals 0

    sput p0, Lcom/baidu/location/n;->L:I

    return p0
.end method

.method static synthetic d(Lcom/baidu/location/n;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/n;->p:J

    return-wide v0
.end method

.method static synthetic e(I)I
    .locals 0

    sput p0, Lcom/baidu/location/n;->M:I

    return p0
.end method

.method static synthetic e(Lcom/baidu/location/n;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/n;->s:Z

    return v0
.end method

.method public static f()Ljava/lang/String;
    .locals 12

    const-wide/16 v10, 0x4

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    sget-object v0, Lcom/baidu/location/n;->A:Ljava/io/File;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/baidu/location/n;->A:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v0, Lcom/baidu/location/n;->A:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v3, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-static {v4, v5, v0}, Lcom/baidu/location/n;->b(III)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {}, Lcom/baidu/location/n;->z()Z

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/baidu/location/ak;->e()V

    if-eqz v5, :cond_3

    if-ne v5, v0, :cond_4

    :cond_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/baidu/location/ak;->e()V

    add-int/lit8 v0, v5, -0x1

    mul-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0xc

    int-to-long v6, v0

    add-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    new-array v8, v2, [B

    add-long/2addr v6, v10

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_5

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v6

    aput-byte v6, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([B)V

    sget v0, Lcom/baidu/location/ak;->U:I

    if-ge v4, v0, :cond_6

    add-int/lit8 v0, v5, 0x1

    :goto_2
    const-wide/16 v4, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    move-object v0, v2

    goto :goto_0

    :cond_6
    sget v0, Lcom/baidu/location/ak;->U:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method static synthetic f(Lcom/baidu/location/n;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/n;->t:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g()I
    .locals 1

    sget v0, Lcom/baidu/location/n;->h:I

    return v0
.end method

.method static synthetic g(Lcom/baidu/location/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/n;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/location/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/n;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Z
    .locals 1

    sget-boolean v0, Lcom/baidu/location/n;->C:Z

    return v0
.end method

.method static synthetic i()I
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/baidu/location/n;->D:I

    return v0
.end method

.method static synthetic i(Lcom/baidu/location/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/n;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/StringBuffer;
    .locals 1

    sget-object v0, Lcom/baidu/location/n;->B:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic k()Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/n;->C:Z

    return v0
.end method

.method static synthetic l()D
    .locals 2

    sget-wide v0, Lcom/baidu/location/n;->J:D

    return-wide v0
.end method

.method static synthetic m()D
    .locals 2

    sget-wide v0, Lcom/baidu/location/n;->I:D

    return-wide v0
.end method

.method static synthetic n()J
    .locals 2

    sget-wide v0, Lcom/baidu/location/n;->F:J

    return-wide v0
.end method

.method static synthetic o()I
    .locals 1

    sget v0, Lcom/baidu/location/n;->D:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/location/n;->D:I

    return v0
.end method

.method static synthetic p()J
    .locals 2

    sget-wide v0, Lcom/baidu/location/n;->G:J

    return-wide v0
.end method

.method static synthetic q()J
    .locals 2

    sget-wide v0, Lcom/baidu/location/n;->H:J

    return-wide v0
.end method

.method static synthetic r()I
    .locals 1

    sget v0, Lcom/baidu/location/n;->K:I

    return v0
.end method

.method static synthetic s()I
    .locals 1

    sget v0, Lcom/baidu/location/n;->L:I

    return v0
.end method

.method static synthetic t()I
    .locals 1

    sget v0, Lcom/baidu/location/n;->M:I

    return v0
.end method

.method static synthetic u()I
    .locals 1

    sget v0, Lcom/baidu/location/n;->E:I

    return v0
.end method

.method static synthetic v()I
    .locals 1

    sget v0, Lcom/baidu/location/n;->D:I

    return v0
.end method

.method static synthetic w()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/baidu/location/n;->A:Ljava/io/File;

    return-object v0
.end method

.method static synthetic x()V
    .locals 0

    invoke-static {}, Lcom/baidu/location/n;->A()V

    return-void
.end method

.method static synthetic y()Z
    .locals 1

    invoke-static {}, Lcom/baidu/location/n;->z()Z

    move-result v0

    return v0
.end method

.method private static z()Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/location/n;->A:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/baidu/location/n;->A:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    sget-object v1, Lcom/baidu/location/n;->A:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/baidu/location/n;->A:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    :try_start_0
    sget-object v1, Lcom/baidu/location/n;->A:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v2, Lcom/baidu/location/n;->A:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {}, Lcom/baidu/location/n;->A()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/baidu/location/n;->A:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/n;->m:Z

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/n;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/baidu/location/n;->c:Landroid/location/LocationManager;

    new-instance v0, Lcom/baidu/location/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/p;-><init>(Lcom/baidu/location/n;B)V

    iput-object v0, p0, Lcom/baidu/location/n;->e:Lcom/baidu/location/p;

    new-instance v0, Lcom/baidu/location/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/o;-><init>(Lcom/baidu/location/n;B)V

    iput-object v0, p0, Lcom/baidu/location/n;->g:Lcom/baidu/location/o;

    iget-object v0, p0, Lcom/baidu/location/n;->c:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x40a0

    iget-object v5, p0, Lcom/baidu/location/n;->e:Lcom/baidu/location/p;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/baidu/location/n;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/n;->g:Lcom/baidu/location/o;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    iget-object v0, p0, Lcom/baidu/location/n;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/n;->g:Lcom/baidu/location/o;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/n;->m:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/baidu/location/n;->m:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/n;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/n;->e:Lcom/baidu/location/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/n;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/n;->e:Lcom/baidu/location/p;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/n;->g:Lcom/baidu/location/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/n;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/n;->g:Lcom/baidu/location/o;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    iget-object v0, p0, Lcom/baidu/location/n;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/n;->g:Lcom/baidu/location/o;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/n;->y:Lcom/baidu/location/s;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/n;->y:Lcom/baidu/location/s;

    invoke-static {}, Lcom/baidu/location/s;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iput-object v2, p0, Lcom/baidu/location/n;->e:Lcom/baidu/location/p;

    iput-object v2, p0, Lcom/baidu/location/n;->g:Lcom/baidu/location/o;

    iput-object v2, p0, Lcom/baidu/location/n;->c:Landroid/location/LocationManager;

    iput-boolean v3, p0, Lcom/baidu/location/n;->m:Z

    invoke-direct {p0, v3}, Lcom/baidu/location/n;->a(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final c()Ljava/lang/String;
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"result\":{\"time\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/ak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"error\":\"61\"},\"content\":{\"point\":{\"x\":\"%f\",\"y\":\"%f\"},\"radius\":\"%d\",\"d\":\"%f\",\"s\":\"%f\",\"n\":\"%d\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    iget-object v2, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x400ccccccccccccdL

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    const-string v7, "gps2gcj"

    invoke-static {v3, v4, v5, v6, v7}, Lcom/baidu/location/Jni;->a(DDLjava/lang/String;)[D

    move-result-object v3

    aget-wide v4, v3, v8

    cmpl-double v4, v4, v10

    if-gtz v4, :cond_0

    aget-wide v4, v3, v9

    cmpl-double v4, v4, v10

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v3, v8

    iget-object v4, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v3, v9

    :cond_0
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aget-wide v5, v3, v8

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    aget-wide v5, v3, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x3

    iget-object v5, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getBearing()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x5

    sget v2, Lcom/baidu/location/n;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wgs84: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gcj02: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-wide v4, v3, v8

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-wide v2, v3, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/baidu/location/ak;->e()V

    return-object v0

    :cond_2
    const/high16 v0, 0x4120

    goto/16 :goto_0
.end method

.method public final d()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    return-object v0
.end method

.method public final e()Z
    .locals 8

    const-wide/16 v6, 0xbb8

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/location/n;->d:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/baidu/location/n;->k:Z

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/baidu/location/n;->j:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    :cond_3
    sget v4, Lcom/baidu/location/n;->h:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    iget-wide v4, p0, Lcom/baidu/location/n;->i:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_1
.end method
