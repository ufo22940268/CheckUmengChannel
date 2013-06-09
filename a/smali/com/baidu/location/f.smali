.class public final Lcom/baidu/location/f;
.super Landroid/app/Service;


# static fields
.field static a:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/io/File;

.field private static g:Ljava/io/File;


# instance fields
.field private A:J

.field private B:Z

.field private C:Lcom/baidu/location/f$c;

.field private D:Landroid/database/sqlite/SQLiteDatabase;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Z

.field private I:Z

.field private J:Ljava/lang/String;

.field private K:I

.field private L:Z

.field private M:D

.field private N:D

.field private O:D

.field private P:J

.field private Q:Z

.field final b:Landroid/os/Handler;

.field final c:Landroid/os/Messenger;

.field private d:Ljava/lang/String;

.field private h:Lcom/baidu/location/t;

.field private i:Lcom/baidu/location/n;

.field private j:Lcom/baidu/location/w;

.field private k:Lcom/baidu/location/l;

.field private l:Lcom/baidu/location/z;

.field private m:Lcom/baidu/location/z;

.field private n:Lcom/baidu/location/z;

.field private o:Lcom/baidu/location/u;

.field private p:Lcom/baidu/location/u;

.field private q:Lcom/baidu/location/u;

.field private r:Landroid/location/Location;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/baidu/tempdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/f;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/glb.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/f;->e:Ljava/lang/String;

    sput-object v2, Lcom/baidu/location/f;->f:Ljava/io/File;

    sput-object v2, Lcom/baidu/location/f;->g:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/vm.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/f;->d:Ljava/lang/String;

    new-instance v0, Lcom/baidu/location/ad;

    invoke-direct {v0, p0}, Lcom/baidu/location/ad;-><init>(Lcom/baidu/location/f;)V

    iput-object v0, p0, Lcom/baidu/location/f;->b:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/baidu/location/f;->b:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/f;->c:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/baidu/location/f;->h:Lcom/baidu/location/t;

    iput-object v2, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    iput-object v2, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    iput-object v2, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    iput-object v2, p0, Lcom/baidu/location/f;->l:Lcom/baidu/location/z;

    iput-object v2, p0, Lcom/baidu/location/f;->m:Lcom/baidu/location/z;

    iput-object v2, p0, Lcom/baidu/location/f;->n:Lcom/baidu/location/z;

    iput-object v2, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/u;

    iput-object v2, p0, Lcom/baidu/location/f;->p:Lcom/baidu/location/u;

    iput-object v2, p0, Lcom/baidu/location/f;->q:Lcom/baidu/location/u;

    iput-object v2, p0, Lcom/baidu/location/f;->r:Landroid/location/Location;

    iput-object v2, p0, Lcom/baidu/location/f;->s:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/f;->t:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/f;->u:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/baidu/location/f;->v:Z

    iput-boolean v6, p0, Lcom/baidu/location/f;->w:Z

    iput-boolean v3, p0, Lcom/baidu/location/f;->x:Z

    iput-boolean v3, p0, Lcom/baidu/location/f;->y:Z

    iput-wide v7, p0, Lcom/baidu/location/f;->z:J

    iput-wide v7, p0, Lcom/baidu/location/f;->A:J

    iput-boolean v6, p0, Lcom/baidu/location/f;->B:Z

    iput-object v2, p0, Lcom/baidu/location/f;->C:Lcom/baidu/location/f$c;

    iput-object v2, p0, Lcom/baidu/location/f;->D:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "bdcltb09"

    iput-object v0, p0, Lcom/baidu/location/f;->E:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/f;->F:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/f;->G:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/baidu/location/f;->H:Z

    iput-boolean v3, p0, Lcom/baidu/location/f;->I:Z

    iput-object v2, p0, Lcom/baidu/location/f;->J:Ljava/lang/String;

    iput v3, p0, Lcom/baidu/location/f;->K:I

    iput-boolean v6, p0, Lcom/baidu/location/f;->L:Z

    iput-wide v4, p0, Lcom/baidu/location/f;->M:D

    iput-wide v4, p0, Lcom/baidu/location/f;->N:D

    iput-wide v4, p0, Lcom/baidu/location/f;->O:D

    iput-wide v7, p0, Lcom/baidu/location/f;->P:J

    iput-boolean v3, p0, Lcom/baidu/location/f;->Q:Z

    return-void
.end method

.method static synthetic a(Ljava/io/File;)Ljava/io/File;
    .locals 0

    sput-object p0, Lcom/baidu/location/f;->f:Ljava/io/File;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-object v1, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/u;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/u;

    invoke-virtual {v1}, Lcom/baidu/location/u;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/f;->h:Lcom/baidu/location/t;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/f;->h:Lcom/baidu/location/t;

    invoke-virtual {v1}, Lcom/baidu/location/t;->d()Lcom/baidu/location/u;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/u;

    :cond_1
    iget-object v1, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/u;

    invoke-virtual {v1}, Lcom/baidu/location/u;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/f;->F:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/u;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/u;

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v3, "cell=%d|%d|%d|%d:%d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v1, Lcom/baidu/location/u;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, v1, Lcom/baidu/location/u;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    iget v6, v1, Lcom/baidu/location/u;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget v5, v1, Lcom/baidu/location/u;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x4

    iget v1, v1, Lcom/baidu/location/u;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/baidu/location/ak;->f()V

    iget-object v1, p0, Lcom/baidu/location/f;->l:Lcom/baidu/location/z;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/location/f;->l:Lcom/baidu/location/z;

    invoke-virtual {v1}, Lcom/baidu/location/z;->g()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    invoke-virtual {v1}, Lcom/baidu/location/w;->h()Lcom/baidu/location/z;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/f;->l:Lcom/baidu/location/z;

    :cond_4
    iget-object v1, p0, Lcom/baidu/location/f;->l:Lcom/baidu/location/z;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/baidu/location/f;->l:Lcom/baidu/location/z;

    invoke-virtual {v1}, Lcom/baidu/location/z;->d()Ljava/lang/String;

    :cond_5
    invoke-static {}, Lcom/baidu/location/ak;->f()V

    iget-object v1, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    invoke-virtual {v1}, Lcom/baidu/location/n;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    invoke-virtual {v1}, Lcom/baidu/location/n;->d()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/f;->r:Landroid/location/Location;

    :goto_0
    iget-object v1, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    invoke-virtual {v0}, Lcom/baidu/location/l;->b()Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-static {p0}, Lcom/baidu/location/ae;->b(Landroid/content/Context;)I

    move-result v1

    if-ne v9, v1, :cond_a

    const-string v1, "&cn=32"

    :goto_1
    iget-boolean v2, p0, Lcom/baidu/location/f;->w:Z

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/baidu/location/an;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    iget-object v1, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/u;

    iget-object v2, p0, Lcom/baidu/location/f;->l:Lcom/baidu/location/z;

    iget-object v3, p0, Lcom/baidu/location/f;->r:Landroid/location/Location;

    invoke-static {v1, v2, v3, v0, v7}, Lcom/baidu/location/ak;->a(Lcom/baidu/location/u;Lcom/baidu/location/z;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    iput-object v0, p0, Lcom/baidu/location/f;->r:Landroid/location/Location;

    goto :goto_0

    :cond_a
    const-string v1, "&cn=%d"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/location/f;->h:Lcom/baidu/location/t;

    invoke-virtual {v3}, Lcom/baidu/location/t;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private a(Z)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/u;

    invoke-virtual {v0}, Lcom/baidu/location/u;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/f;->h:Lcom/baidu/location/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f;->h:Lcom/baidu/location/t;

    invoke-virtual {v0}, Lcom/baidu/location/t;->d()Lcom/baidu/location/u;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/u;

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/u;

    invoke-virtual {v0}, Lcom/baidu/location/u;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/f;->D:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    :cond_2
    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iput-boolean v7, p0, Lcom/baidu/location/f;->H:Z

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/baidu/location/f;->H:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"result\":{\"time\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/ak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"error\":\"66\"},\"content\":{\"point\":{\"x\":\"%f\",\"y\":\"%f\"},\"radius\":\"%f\",\"isCellChanged\":\"%b\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/baidu/location/f;->M:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    iget-wide v2, p0, Lcom/baidu/location/f;->N:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    iget-wide v2, p0, Lcom/baidu/location/f;->O:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_4
    invoke-static {}, Lcom/baidu/location/ak;->e()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/baidu/location/f;->P:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x5dc

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/location/f;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iput-boolean v7, p0, Lcom/baidu/location/f;->H:Z

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/f;->D:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select * from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/location/f;->E:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " where id = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v0, p0, Lcom/baidu/location/f;->G:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/f;->P:J

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "lookup DB success:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/location/f;->G:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-wide v4, 0x40934dbaacd9e83eL

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/location/f;->M:D

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-wide v4, 0x40b0e60000000000L

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/location/f;->O:D

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-wide v4, 0x40a27ea4b5dcc63fL

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/location/f;->N:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/f;->H:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "lookup DB success:x"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/baidu/location/f;->M:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "y"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/baidu/location/f;->N:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/baidu/location/f;->O:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/f;->P:J

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"result\":{\"time\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/ak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"error\":\"68\"},\"content\":{\"point\":{\"x\":\"%f\",\"y\":\"%f\"},\"radius\":\"%f\",\"isCellChanged\":\"%b\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/baidu/location/f;->M:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    iget-wide v2, p0, Lcom/baidu/location/f;->N:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    iget-wide v2, p0, Lcom/baidu/location/f;->O:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v8

    iget-boolean v2, p0, Lcom/baidu/location/f;->L:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    if-eqz p1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"result\":{\"time\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/ak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"error\":\"67\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"result\":{\"time\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/ak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"error\":\"63\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static a()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    sget-object v0, Lcom/baidu/location/f;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/f;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/location/f;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/f;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    sget-object v0, Lcom/baidu/location/f;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/baidu/location/f;->g:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/f;->g:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-object v3, Lcom/baidu/location/f;->g:Ljava/io/File;

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/location/f;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    invoke-static {}, Lcom/baidu/location/ak;->f()V

    iput-object v0, p0, Lcom/baidu/location/f;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/f;->m:Lcom/baidu/location/z;

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/baidu/location/f;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/location/l;->a(Ljava/lang/String;I)V

    :cond_0
    const/16 v0, 0x15

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/baidu/location/f;->i()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/baidu/location/f;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    invoke-virtual {v0, p1}, Lcom/baidu/location/l;->a(Landroid/os/Message;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    invoke-virtual {v0}, Lcom/baidu/location/w;->b()V

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/location/f;->B:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/f;->b:Landroid/os/Handler;

    invoke-static {v0}, Lcom/baidu/location/ae;->a(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/f;->B:Z

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/baidu/location/f;Landroid/os/Message;I)V
    .locals 10

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    invoke-static {}, Lcom/baidu/location/ak;->f()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "network:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    invoke-virtual {v0, v8, p2}, Lcom/baidu/location/l;->a(Ljava/lang/String;I)V

    :cond_0
    invoke-static {v8}, Lcom/baidu/location/ak;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x15

    if-ne p2, v0, :cond_9

    iput-object v8, p0, Lcom/baidu/location/f;->t:Ljava/lang/String;

    :goto_0
    const-string v0, "ssid\":\""

    const-string v1, "\""

    invoke-static {v8, v0, v1}, Lcom/baidu/location/ak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_c

    iget-object v1, p0, Lcom/baidu/location/f;->m:Lcom/baidu/location/z;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/baidu/location/f;->m:Lcom/baidu/location/z;

    invoke-virtual {v1, v0}, Lcom/baidu/location/z;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/f;->s:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/baidu/location/f;->D:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/location/f;->L:Z

    if-nez v0, :cond_d

    :cond_1
    :goto_2
    const-string v0, "a\":\""

    const-string v1, "\""

    invoke-static {v8, v0, v1}, Lcom/baidu/location/ak;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_2

    const-string v2, "b\":\""

    const-string v3, "\""

    invoke-static {v8, v2, v3}, Lcom/baidu/location/ak;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    const-string v4, "c\":\""

    const-string v5, "\""

    invoke-static {v8, v4, v5}, Lcom/baidu/location/ak;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "b\":\""

    const-string v7, "\""

    invoke-static {v8, v6, v7}, Lcom/baidu/location/ak;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/baidu/location/an;->a(DDDD)V

    :cond_2
    const-string v0, "rWifiN\":\""

    const-string v1, "\""

    invoke-static {v8, v0, v1}, Lcom/baidu/location/ak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_3

    sput v0, Lcom/baidu/location/ak;->I:I

    :cond_3
    const-string v0, "rWifiT\":\""

    const-string v1, "\""

    invoke-static {v8, v0, v1}, Lcom/baidu/location/ak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_4

    sput v0, Lcom/baidu/location/ak;->K:I

    :cond_4
    const-string v0, "hSpeedDis\":\""

    const-string v1, "\""

    invoke-static {v8, v0, v1}, Lcom/baidu/location/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40a0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    sput v0, Lcom/baidu/location/ak;->H:F

    :cond_5
    const-string v0, "mSpeedDis\":\""

    const-string v1, "\""

    invoke-static {v8, v0, v1}, Lcom/baidu/location/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40a0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    sput v0, Lcom/baidu/location/ak;->G:F

    :cond_6
    const-string v0, "mWifiR\":\""

    const-string v1, "\""

    invoke-static {v8, v0, v1}, Lcom/baidu/location/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x3f80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_7

    float-to-double v1, v0

    const-wide v3, 0x3fc999999999999aL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_7

    sput v0, Lcom/baidu/location/ak;->J:F

    :cond_7
    const/16 v0, 0x15

    if-ne p2, v0, :cond_8

    invoke-direct {p0}, Lcom/baidu/location/f;->i()V

    :cond_8
    return-void

    :cond_9
    iput-object v8, p0, Lcom/baidu/location/f;->u:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x15

    if-ne p2, v0, :cond_b

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/f;->t:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/f;->u:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/f;->s:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DB:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "result"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "error"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v9, 0xa1

    if-ne v7, v9, :cond_10

    const-string v7, "content"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "clf"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v4, 0x0

    const-string v0, "clf"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v0, "point"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v1, "y"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-string v5, "radius"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DB PARSE:x"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "y"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "R"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_e
    if-nez v4, :cond_1

    const-wide v6, 0x40934dbaacd9e83eL

    add-double/2addr v2, v6

    const-wide v6, 0x40a27ea4b5dcc63fL

    add-double/2addr v0, v6

    const v4, 0x45873000

    add-float/2addr v4, v5

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "time"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "tag"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v2, "type"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/f;->D:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/baidu/location/f;->E:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id = \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/location/f;->F:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    const-string v0, "id"

    iget-object v1, p0, Lcom/baidu/location/f;->F:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/f;->D:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/baidu/location/f;->E:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-static {}, Lcom/baidu/location/ak;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_f
    :try_start_2
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v0, 0x1

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    goto/16 :goto_3

    :cond_10
    const/16 v6, 0xa7

    if-ne v7, v6, :cond_e

    iget-object v0, p0, Lcom/baidu/location/f;->D:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/baidu/location/f;->E:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id = \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/location/f;->F:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/baidu/location/f;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/f;->y:Z

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/location/f;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    invoke-virtual {v0, p1}, Lcom/baidu/location/l;->b(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/baidu/location/f;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/f;->y:Z

    return v0
.end method

.method static synthetic c(Lcom/baidu/location/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/f;->h()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/location/f;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    invoke-virtual {v0, p1}, Lcom/baidu/location/l;->c(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    invoke-virtual {v0}, Lcom/baidu/location/w;->i()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/f;->t:Ljava/lang/String;

    return-void
.end method

.method static synthetic d()V
    .locals 0

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/location/f;Landroid/os/Message;)V
    .locals 2

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

    check-cast v0, Landroid/location/Location;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/an;->a(Landroid/location/Location;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f;->h:Lcom/baidu/location/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    goto :goto_0
.end method

.method static synthetic d(Lcom/baidu/location/f;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/f;->v:Z

    return v0
.end method

.method static synthetic e()V
    .locals 0

    return-void
.end method

.method static synthetic e(Lcom/baidu/location/f;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-object v0, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    invoke-virtual {v0}, Lcom/baidu/location/n;->d()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    invoke-virtual {v1}, Lcom/baidu/location/n;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/an;->a(Landroid/location/Location;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/f;->h:Lcom/baidu/location/t;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    invoke-virtual {v1}, Lcom/baidu/location/w;->d()Z

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/f;->h:Lcom/baidu/location/t;

    invoke-virtual {v1}, Lcom/baidu/location/t;->d()Lcom/baidu/location/u;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    invoke-virtual {v2}, Lcom/baidu/location/w;->g()Lcom/baidu/location/z;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    invoke-virtual {v3}, Lcom/baidu/location/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/baidu/location/an;->a(Lcom/baidu/location/u;Lcom/baidu/location/z;Landroid/location/Location;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    invoke-virtual {v0}, Lcom/baidu/location/n;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    iget-object v1, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    invoke-virtual {v1}, Lcom/baidu/location/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/l;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/baidu/location/f;Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x1

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    invoke-static {}, Lcom/baidu/location/ak;->f()V

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    invoke-virtual {v0, p1}, Lcom/baidu/location/l;->e(Landroid/os/Message;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    invoke-virtual {v0}, Lcom/baidu/location/n;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    iget-object v1, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    invoke-virtual {v1}, Lcom/baidu/location/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/location/l;->a(Ljava/lang/String;Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/location/f;->w:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/baidu/location/f;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    invoke-virtual {v0}, Lcom/baidu/location/w;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/baidu/location/f;->y:Z

    iget-object v0, p0, Lcom/baidu/location/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/location/ac;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/location/ac;-><init>(Lcom/baidu/location/f;B)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/baidu/location/f;->h()V

    goto :goto_0
.end method

.method static synthetic f()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/baidu/location/f;->f:Ljava/io/File;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/location/f;)V
    .locals 2

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    invoke-virtual {v0}, Lcom/baidu/location/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/n;

    iget-object v1, p0, Lcom/baidu/location/f;->b:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/n;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    invoke-virtual {v0}, Lcom/baidu/location/n;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    invoke-virtual {v0}, Lcom/baidu/location/n;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    goto :goto_0
.end method

.method static synthetic f(Lcom/baidu/location/f;Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/baidu/location/f;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/location/l;->a(Ljava/lang/String;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method static synthetic g()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/baidu/location/f;->g:Ljava/io/File;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/location/f;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-boolean v0, p0, Lcom/baidu/location/f;->y:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/location/f;->h()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/f;->y:Z

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/baidu/location/f;Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/f;->A:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-object v0, p0, Lcom/baidu/location/f;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    iget-object v1, p0, Lcom/baidu/location/f;->u:Ljava/lang/String;

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/l;->a(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    invoke-virtual {v0, p1}, Lcom/baidu/location/l;->d(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/f;->s:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/f;->s:Ljava/lang/String;

    :cond_2
    invoke-static {p0}, Lcom/baidu/location/ae;->b(Landroid/content/Context;)I

    iget-object v1, p0, Lcom/baidu/location/f;->b:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/baidu/location/ae;->b(Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/u;

    iput-object v0, p0, Lcom/baidu/location/f;->q:Lcom/baidu/location/u;

    iget-object v0, p0, Lcom/baidu/location/f;->l:Lcom/baidu/location/z;

    iput-object v0, p0, Lcom/baidu/location/f;->n:Lcom/baidu/location/z;

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/f;->A:J

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/baidu/location/ak;->e()V

    goto :goto_1
.end method

.method private h()V
    .locals 14

    const/4 v13, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/baidu/location/f;->x:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/baidu/location/f;->z:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    iget-object v0, p0, Lcom/baidu/location/f;->t:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    iget-object v1, p0, Lcom/baidu/location/f;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/l;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/location/f;->i()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/baidu/location/ak;->e()V

    invoke-static {}, Lcom/baidu/location/ak;->f()V

    iput-boolean v1, p0, Lcom/baidu/location/f;->x:Z

    iget-object v0, p0, Lcom/baidu/location/f;->p:Lcom/baidu/location/u;

    iget-object v3, p0, Lcom/baidu/location/f;->h:Lcom/baidu/location/t;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/baidu/location/f;->h:Lcom/baidu/location/t;

    invoke-virtual {v3}, Lcom/baidu/location/t;->d()Lcom/baidu/location/u;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/u;

    iget-object v3, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/u;

    if-eq v3, v0, :cond_5

    iget-object v3, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/u;

    if-eqz v3, :cond_2

    if-nez v0, :cond_4

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/baidu/location/f;->L:Z

    iget-object v0, p0, Lcom/baidu/location/f;->m:Lcom/baidu/location/z;

    iget-object v3, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    invoke-virtual {v3}, Lcom/baidu/location/w;->h()Lcom/baidu/location/z;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/f;->l:Lcom/baidu/location/z;

    iget-object v3, p0, Lcom/baidu/location/f;->l:Lcom/baidu/location/z;

    if-eq v0, v3, :cond_12

    iget-object v3, p0, Lcom/baidu/location/f;->l:Lcom/baidu/location/z;

    if-eqz v3, :cond_3

    if-nez v0, :cond_6

    :cond_3
    move v0, v1

    :goto_2
    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/baidu/location/f;->L:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/baidu/location/f;->t:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    iget-object v1, p0, Lcom/baidu/location/f;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/l;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/location/f;->i()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/u;

    invoke-virtual {v0, v3}, Lcom/baidu/location/u;->a(Lcom/baidu/location/u;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/baidu/location/f;->l:Lcom/baidu/location/z;

    sget v6, Lcom/baidu/location/ak;->L:F

    if-eqz v3, :cond_7

    if-nez v0, :cond_8

    :cond_7
    move v0, v2

    :goto_3
    if-nez v0, :cond_12

    move v0, v1

    goto :goto_2

    :cond_8
    iget-object v7, v3, Lcom/baidu/location/z;->a:Ljava/util/List;

    iget-object v8, v0, Lcom/baidu/location/z;->a:Ljava/util/List;

    if-ne v7, v8, :cond_9

    move v0, v1

    goto :goto_3

    :cond_9
    if-eqz v7, :cond_a

    if-nez v8, :cond_b

    :cond_a
    move v0, v2

    goto :goto_3

    :cond_b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    add-int v0, v9, v10

    int-to-float v11, v0

    if-nez v9, :cond_c

    if-nez v10, :cond_c

    move v0, v1

    goto :goto_3

    :cond_c
    if-eqz v9, :cond_d

    if-nez v10, :cond_e

    :cond_d
    move v0, v2

    goto :goto_3

    :cond_e
    move v5, v2

    move v3, v2

    :goto_4
    if-ge v5, v9, :cond_10

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v12, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v12, :cond_18

    move v4, v2

    :goto_5
    if-ge v4, v10, :cond_18

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    add-int/lit8 v0, v3, 0x1

    :goto_6
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v0

    goto :goto_4

    :cond_f
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_5

    :cond_10
    invoke-static {}, Lcom/baidu/location/w;->j()Ljava/lang/String;

    const-string v0, "same %d,total %f,rate %f..."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    mul-int/lit8 v0, v3, 0x2

    int-to-float v0, v0

    mul-float v3, v11, v6

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_11

    move v0, v1

    goto :goto_3

    :cond_11
    move v0, v2

    goto :goto_3

    :cond_12
    move v0, v2

    goto/16 :goto_2

    :cond_13
    invoke-direct {p0, v13}, Lcom/baidu/location/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"result\":{\"time\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/ak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"error\":\"62\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    invoke-virtual {v1, v0}, Lcom/baidu/location/l;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/location/f;->i()V

    goto/16 :goto_0

    :cond_14
    iget-object v3, p0, Lcom/baidu/location/f;->s:Ljava/lang/String;

    if-eqz v3, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/location/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v13, p0, Lcom/baidu/location/f;->s:Ljava/lang/String;

    :cond_15
    iget-object v3, p0, Lcom/baidu/location/f;->b:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/baidu/location/ae;->a(Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/location/f;->o:Lcom/baidu/location/u;

    iput-object v0, p0, Lcom/baidu/location/f;->p:Lcom/baidu/location/u;

    iget-object v0, p0, Lcom/baidu/location/f;->l:Lcom/baidu/location/z;

    iput-object v0, p0, Lcom/baidu/location/f;->m:Lcom/baidu/location/z;

    :goto_7
    iget-boolean v0, p0, Lcom/baidu/location/f;->w:Z

    if-ne v0, v1, :cond_16

    iput-boolean v2, p0, Lcom/baidu/location/f;->w:Z

    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/f;->z:J

    goto/16 :goto_0

    :cond_17
    invoke-static {}, Lcom/baidu/location/ak;->e()V

    goto :goto_7

    :cond_18
    move v0, v3

    goto/16 :goto_6
.end method

.method static synthetic h(Lcom/baidu/location/f;)V
    .locals 1

    invoke-static {p0}, Lcom/baidu/location/ae;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/ae;->a()V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/f;->x:Z

    iget-object v0, p0, Lcom/baidu/location/f;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/baidu/location/ae;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/ae;->a()V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/baidu/location/f;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    invoke-virtual {v0}, Lcom/baidu/location/l;->c()V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/baidu/location/f;)Lcom/baidu/location/f$c;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f;->C:Lcom/baidu/location/f$c;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/location/f;)V
    .locals 1

    :try_start_0
    sget-boolean v0, Lcom/baidu/location/ak;->ab:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/ak;->j:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/baidu/location/f$c;

    invoke-direct {v0, p0, p0}, Lcom/baidu/location/f$c;-><init>(Lcom/baidu/location/f;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/location/f;->C:Lcom/baidu/location/f$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic l(Lcom/baidu/location/f;)Lcom/baidu/location/w;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    return-object v0
.end method

.method static synthetic m(Lcom/baidu/location/f;)Lcom/baidu/location/t;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f;->h:Lcom/baidu/location/t;

    return-object v0
.end method

.method static synthetic n(Lcom/baidu/location/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/baidu/location/f;)Lcom/baidu/location/l;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 1

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/baidu/location/f;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f;->c:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final onCreate()V
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/location/ab;

    invoke-direct {v0, p0, p0}, Lcom/baidu/location/ab;-><init>(Lcom/baidu/location/f;Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    new-instance v0, Lcom/baidu/location/t;

    iget-object v1, p0, Lcom/baidu/location/f;->b:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/t;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/f;->h:Lcom/baidu/location/t;

    new-instance v0, Lcom/baidu/location/w;

    iget-object v1, p0, Lcom/baidu/location/f;->b:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/w;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    new-instance v0, Lcom/baidu/location/l;

    iget-object v1, p0, Lcom/baidu/location/f;->b:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/baidu/location/l;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/f;->k:Lcom/baidu/location/l;

    iget-object v0, p0, Lcom/baidu/location/f;->h:Lcom/baidu/location/t;

    invoke-virtual {v0}, Lcom/baidu/location/t;->a()V

    iget-object v0, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    invoke-virtual {v0}, Lcom/baidu/location/w;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/f;->v:Z

    iput-boolean v2, p0, Lcom/baidu/location/f;->x:Z

    iput-boolean v2, p0, Lcom/baidu/location/f;->y:Z

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/f;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/baidu/location/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ls.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/f;->D:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/baidu/location/f;->D:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/location/f;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(id CHAR(40) PRIMARY KEY,time DOUBLE,tag DOUBLE, type DOUBLE , ac INT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    invoke-static {}, Lcom/baidu/location/ak;->e()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "baidu location service start1 ..."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/location/f;->h:Lcom/baidu/location/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f;->h:Lcom/baidu/location/t;

    invoke-virtual {v0}, Lcom/baidu/location/t;->b()V

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f;->j:Lcom/baidu/location/w;

    invoke-virtual {v0}, Lcom/baidu/location/w;->c()V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/f;->i:Lcom/baidu/location/n;

    invoke-virtual {v0}, Lcom/baidu/location/n;->b()V

    :cond_2
    invoke-static {}, Lcom/baidu/location/an;->b()V

    iput-boolean v1, p0, Lcom/baidu/location/f;->x:Z

    iput-boolean v1, p0, Lcom/baidu/location/f;->y:Z

    iput-boolean v1, p0, Lcom/baidu/location/f;->v:Z

    iget-object v0, p0, Lcom/baidu/location/f;->C:Lcom/baidu/location/f$c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/f;->C:Lcom/baidu/location/f$c;

    invoke-virtual {v0}, Lcom/baidu/location/f$c;->a()V

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/f;->D:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/f;->D:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    invoke-static {}, Lcom/baidu/location/ak;->e()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    const/4 v0, 0x2

    return v0
.end method
