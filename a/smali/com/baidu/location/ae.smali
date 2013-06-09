.class final Lcom/baidu/location/ae;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I

.field private static c:I

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Z

.field private static j:Z

.field private static k:Z

.field private static l:Z

.field private static m:Z

.field private static n:Ljava/util/ArrayList;

.field private static o:I

.field private static p:Landroid/net/Uri;

.field private static q:I

.field private static r:Ljava/lang/String;

.field private static s:I

.field private static t:I

.field private static u:Landroid/os/Handler;

.field private static v:Landroid/os/Handler;

.field private static w:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "baidu_location_service"

    sput-object v0, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    const/16 v0, 0x800

    sput v0, Lcom/baidu/location/ae;->b:I

    const/4 v0, 0x3

    sput v0, Lcom/baidu/location/ae;->c:I

    sput-object v2, Lcom/baidu/location/ae;->h:Ljava/lang/String;

    sput-boolean v1, Lcom/baidu/location/ae;->i:Z

    sput-boolean v1, Lcom/baidu/location/ae;->j:Z

    sput-boolean v1, Lcom/baidu/location/ae;->k:Z

    sput-boolean v1, Lcom/baidu/location/ae;->l:Z

    sput-boolean v1, Lcom/baidu/location/ae;->m:Z

    sput-object v2, Lcom/baidu/location/ae;->n:Ljava/util/ArrayList;

    const/16 v0, 0x2ee0

    sput v0, Lcom/baidu/location/ae;->o:I

    sput-object v2, Lcom/baidu/location/ae;->p:Landroid/net/Uri;

    const/4 v0, 0x4

    sput v0, Lcom/baidu/location/ae;->q:I

    const-string v0, "10.0.0.172"

    sput-object v0, Lcom/baidu/location/ae;->r:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/baidu/location/ae;->s:I

    sput v1, Lcom/baidu/location/ae;->t:I

    sput-object v2, Lcom/baidu/location/ae;->u:Landroid/os/Handler;

    sput-object v2, Lcom/baidu/location/ae;->v:Landroid/os/Handler;

    sput-object v2, Lcom/baidu/location/ae;->w:Landroid/os/Handler;

    return-void
.end method

.method static synthetic A()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/baidu/location/ae;->w:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic B()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/ae;->w:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic C()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/ae;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic D()Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/ae;->l:Z

    return v0
.end method

.method public static a()V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-boolean v0, Lcom/baidu/location/ae;->k:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean v5, Lcom/baidu/location/ae;->k:Z

    sget-object v0, Lcom/baidu/location/ae;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    sput v1, Lcom/baidu/location/ae;->t:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/ae;->n:Ljava/util/ArrayList;

    move v0, v1

    :cond_1
    sget v2, Lcom/baidu/location/ae;->t:I

    if-ge v2, v6, :cond_8

    invoke-static {}, Lcom/baidu/location/an;->a()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_6

    sget v4, Lcom/baidu/location/ae;->t:I

    if-eq v4, v5, :cond_6

    sput v6, Lcom/baidu/location/ae;->t:I

    :try_start_0
    sget v4, Lcom/baidu/location/ak;->Y:I

    if-nez v4, :cond_5

    invoke-static {}, Lcom/baidu/location/f;->b()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/n;->f()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    sget-object v4, Lcom/baidu/location/ae;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    sget-object v2, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "upload data size:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    sget v2, Lcom/baidu/location/ae;->b:I

    if-lt v0, v2, :cond_1

    :cond_3
    sget-object v0, Lcom/baidu/location/ae;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/baidu/location/ae;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_4
    sput-object v3, Lcom/baidu/location/ae;->n:Ljava/util/ArrayList;

    sput-boolean v1, Lcom/baidu/location/ae;->k:Z

    sget-object v0, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    goto :goto_0

    :cond_5
    :try_start_1
    sget v4, Lcom/baidu/location/ak;->Y:I

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/baidu/location/n;->f()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/baidu/location/f;->b()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v2, v3

    goto :goto_2

    :cond_6
    sput v5, Lcom/baidu/location/ae;->t:I

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    new-instance v0, Lcom/baidu/location/ah;

    invoke-direct {v0}, Lcom/baidu/location/ah;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/location/ah;->start()V

    goto/16 :goto_0

    :cond_8
    move-object v2, v3

    goto :goto_1
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/config.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/baidu/location/ae;->a(Ljava/lang/String;)Z

    :cond_0
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readDouble()D

    move-result-wide v1

    sput-wide v1, Lcom/baidu/location/ak;->n:D

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readDouble()D

    move-result-wide v1

    sput-wide v1, Lcom/baidu/location/ak;->o:D

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    sput-boolean v1, Lcom/baidu/location/ak;->r:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x271

    new-array v1, v1, [B

    sput-object v1, Lcom/baidu/location/ak;->q:[B

    sget-object v1, Lcom/baidu/location/ak;->q:[B

    const/4 v2, 0x0

    const/16 v3, 0x271

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    :cond_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&ver="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/baidu/location/ak;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&usr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/ak;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/ak;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&prod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/ak;->al:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    sput-object p0, Lcom/baidu/location/ae;->w:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/ae;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    sget-boolean v0, Lcom/baidu/location/ae;->l:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/baidu/location/Jni;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/ae;->h:Ljava/lang/String;

    sput-boolean p1, Lcom/baidu/location/ae;->m:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/location/ae;->l:Z

    new-instance v0, Lcom/baidu/location/ai;

    invoke-direct {v0}, Lcom/baidu/location/ai;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/location/ai;->start()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/baidu/location/ae;->b(Landroid/content/Context;)I

    sget v1, Lcom/baidu/location/ae;->q:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_25

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "ver"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/baidu/location/ak;->s:I

    if-le v3, v4, :cond_25

    sput v3, Lcom/baidu/location/ak;->s:I

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/16 v5, 0xa

    if-le v4, v5, :cond_a

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/ak;->t:F

    :cond_0
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/ak;->u:F

    :cond_1
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/ak;->v:F

    :cond_2
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/ak;->w:F

    :cond_3
    const/4 v4, 0x4

    aget-object v4, v3, v4

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x4

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/ak;->x:I

    :cond_4
    const/4 v4, 0x5

    aget-object v4, v3, v4

    if-eqz v4, :cond_5

    const/4 v4, 0x5

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x5

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/ak;->y:I

    :cond_5
    const/4 v4, 0x6

    aget-object v4, v3, v4

    if-eqz v4, :cond_6

    const/4 v4, 0x6

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x6

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/ak;->z:I

    :cond_6
    const/4 v4, 0x7

    aget-object v4, v3, v4

    if-eqz v4, :cond_7

    const/4 v4, 0x7

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x7

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/ak;->A:I

    :cond_7
    const/16 v4, 0x8

    aget-object v4, v3, v4

    if-eqz v4, :cond_8

    const/16 v4, 0x8

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v4, 0x8

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/ak;->B:I

    :cond_8
    const/16 v4, 0x9

    aget-object v4, v3, v4

    if-eqz v4, :cond_9

    const/16 v4, 0x9

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const/16 v4, 0x9

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/ak;->C:I

    :cond_9
    const/16 v4, 0xa

    aget-object v4, v3, v4

    if-eqz v4, :cond_a

    const/16 v4, 0xa

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/ak;->D:I

    :cond_a
    const-string v3, "up"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    const-string v3, "up"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v6, :cond_e

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/ak;->E:F

    :cond_b
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/ak;->F:F

    :cond_c
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_d

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/ak;->G:F

    :cond_d
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_e

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/baidu/location/ak;->H:F

    :cond_e
    const-string v3, "wf"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    sget-object v3, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    const-string v3, "wf"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v6, :cond_12

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/ak;->I:I

    :cond_f
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/ak;->J:F

    :cond_10
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_11

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/ak;->K:I

    :cond_11
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_12

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/baidu/location/ak;->L:F

    :cond_12
    const-string v3, "ab"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    sget-object v3, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    const-string v3, "ab"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v6, :cond_16

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_13

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/ak;->M:F

    :cond_13
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/ak;->N:F

    :cond_14
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_15

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/ak;->O:I

    :cond_15
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_16

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/ak;->P:I

    :cond_16
    const-string v3, "zxd"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "zxd"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v8, :cond_1b

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_17

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/ak;->af:F

    :cond_17
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_18

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/baidu/location/ak;->ag:F

    :cond_18
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_19

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/ak;->ah:I

    :cond_19
    const/4 v4, 0x3

    aget-object v4, v3, v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/baidu/location/ak;->ai:I

    :cond_1a
    const/4 v4, 0x4

    aget-object v4, v3, v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x4

    aget-object v4, v3, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/ak;->aj:I

    :cond_1b
    const-string v3, "gpc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    sget-object v3, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    const-string v3, "gpc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x5

    if-le v3, v4, :cond_21

    const/4 v3, 0x0

    aget-object v3, v2, v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_22

    const/4 v3, 0x1

    sput-boolean v3, Lcom/baidu/location/ak;->Q:Z

    :cond_1c
    :goto_0
    const/4 v3, 0x1

    aget-object v3, v2, v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_23

    const/4 v3, 0x1

    sput-boolean v3, Lcom/baidu/location/ak;->R:Z

    :cond_1d
    :goto_1
    const/4 v3, 0x2

    aget-object v3, v2, v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x2

    aget-object v3, v2, v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/ak;->S:I

    :cond_1e
    const/4 v3, 0x3

    aget-object v3, v2, v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x3

    aget-object v3, v2, v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/ak;->U:I

    :cond_1f
    const/4 v3, 0x4

    aget-object v3, v2, v3

    if-eqz v3, :cond_20

    const/4 v3, 0x4

    aget-object v3, v2, v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    const/4 v3, 0x4

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_24

    int-to-long v3, v3

    sput-wide v3, Lcom/baidu/location/ak;->W:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x3c

    mul-long/2addr v3, v5

    sput-wide v3, Lcom/baidu/location/ak;->V:J

    shr-long/2addr v3, v7

    sput-wide v3, Lcom/baidu/location/ak;->X:J

    :cond_20
    :goto_2
    const/4 v3, 0x5

    aget-object v3, v2, v3

    if-eqz v3, :cond_21

    const/4 v3, 0x5

    aget-object v3, v2, v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/baidu/location/ak;->Y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_21
    :try_start_1
    sget-object v1, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    return v0

    :cond_22
    const/4 v3, 0x0

    :try_start_2
    sput-boolean v3, Lcom/baidu/location/ak;->Q:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_3

    :cond_23
    const/4 v3, 0x0

    sput-boolean v3, Lcom/baidu/location/ak;->R:Z

    goto/16 :goto_1

    :cond_24
    const/4 v3, 0x0

    sput-boolean v3, Lcom/baidu/location/ak;->j:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_25
    move v0, v1

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/baidu/location/ae;->i:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sput-boolean v0, Lcom/baidu/location/ae;->i:Z

    sget-object v1, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bloc : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/location/ae;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    invoke-static {p0}, Lcom/baidu/location/Jni;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/ae;->d:Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NUMBER_e : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/location/ae;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    sget-object v1, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/location/ae;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    sput-object p1, Lcom/baidu/location/ae;->u:Landroid/os/Handler;

    sget-object v1, Lcom/baidu/location/ae;->f:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/baidu/location/an;->a()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/ae;->f:Ljava/lang/String;

    :cond_2
    new-instance v1, Lcom/baidu/location/af;

    invoke-direct {v1}, Lcom/baidu/location/af;-><init>()V

    invoke-virtual {v1}, Lcom/baidu/location/af;->start()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/baidu/location/ae;->c(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/baidu/location/ae;->q:I

    return v0
.end method

.method public static b()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/baidu/location/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/config.dat"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v0, Lcom/baidu/location/ak;->Q:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    sget-boolean v3, Lcom/baidu/location/ak;->R:Z

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    const-string v5, "{\"ver\":\"%d\",\"gps\":\"%.1f|%.1f|%.1f|%.1f|%d|%d|%d|%d|%d|%d|%d\",\"up\":\"%.1f|%.1f|%.1f|%.1f\",\"wf\":\"%d|%.1f|%d|%.1f\",\"ab\":\"%.2f|%.2f|%d|%d\",\"gpc\":\"%d|%d|%d|%d|%d|%d\",\"zxd\":\"%.1f|%.1f|%d|%d|%d\"}"

    const/16 v6, 0x23

    new-array v6, v6, [Ljava/lang/Object;

    sget v7, Lcom/baidu/location/ak;->s:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    sget v2, Lcom/baidu/location/ak;->t:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    sget v2, Lcom/baidu/location/ak;->u:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x3

    sget v2, Lcom/baidu/location/ak;->v:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x4

    sget v2, Lcom/baidu/location/ak;->w:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x5

    sget v2, Lcom/baidu/location/ak;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x6

    sget v2, Lcom/baidu/location/ak;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x7

    sget v2, Lcom/baidu/location/ak;->z:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x8

    sget v2, Lcom/baidu/location/ak;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x9

    sget v2, Lcom/baidu/location/ak;->B:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0xa

    sget v2, Lcom/baidu/location/ak;->C:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0xb

    sget v2, Lcom/baidu/location/ak;->D:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0xc

    sget v2, Lcom/baidu/location/ak;->E:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0xd

    sget v2, Lcom/baidu/location/ak;->F:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0xe

    sget v2, Lcom/baidu/location/ak;->G:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0xf

    sget v2, Lcom/baidu/location/ak;->H:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x10

    sget v2, Lcom/baidu/location/ak;->I:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x11

    sget v2, Lcom/baidu/location/ak;->J:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x12

    sget v2, Lcom/baidu/location/ak;->K:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x13

    sget v2, Lcom/baidu/location/ak;->L:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x14

    sget v2, Lcom/baidu/location/ak;->M:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x15

    sget v2, Lcom/baidu/location/ak;->N:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x16

    sget v2, Lcom/baidu/location/ak;->O:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x17

    sget v2, Lcom/baidu/location/ak;->P:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/16 v1, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    const/16 v0, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x1a

    sget v1, Lcom/baidu/location/ak;->S:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x1b

    sget v1, Lcom/baidu/location/ak;->U:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x1c

    sget-wide v1, Lcom/baidu/location/ak;->W:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x1d

    sget v1, Lcom/baidu/location/ak;->Y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x1e

    sget v1, Lcom/baidu/location/ak;->af:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x1f

    sget v1, Lcom/baidu/location/ak;->ag:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x20

    sget v1, Lcom/baidu/location/ak;->ah:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x21

    sget v1, Lcom/baidu/location/ak;->ai:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x22

    sget v1, Lcom/baidu/location/ak;->aj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save2Config : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/baidu/location/f;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v3, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    array-length v1, v0

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    move v3, v2

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/baidu/location/ae;->j:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sput-boolean v0, Lcom/baidu/location/ae;->j:Z

    invoke-static {p0}, Lcom/baidu/location/Jni;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/ae;->e:Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bloc : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/location/ae;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    sput-object p1, Lcom/baidu/location/ae;->v:Landroid/os/Handler;

    sget-object v1, Lcom/baidu/location/ae;->g:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/baidu/location/an;->a()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/ae;->g:Ljava/lang/String;

    :cond_2
    new-instance v1, Lcom/baidu/location/ag;

    invoke-direct {v1}, Lcom/baidu/location/ag;-><init>()V

    invoke-virtual {v1}, Lcom/baidu/location/ag;->start()V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)I
    .locals 10

    const/4 v8, 0x2

    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v7, 0x1

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    if-eqz v9, :cond_1

    :try_start_1
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v7, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/ae;->p:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/ae;->p:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ctwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    sput-object v0, Lcom/baidu/location/ae;->r:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/baidu/location/ae;->s:I

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v7

    goto :goto_0

    :cond_5
    const-string v0, "10.0.0.200"

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :goto_2
    sput-object v0, Lcom/baidu/location/ae;->r:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/baidu/location/ae;->s:I

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move v0, v7

    goto/16 :goto_0

    :cond_8
    const-string v0, "10.0.0.172"

    goto :goto_2

    :cond_9
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_a
    move v0, v8

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    :try_start_2
    sget-object v1, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_b
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    sput-object v0, Lcom/baidu/location/ae;->r:Ljava/lang/String;

    move v0, v7

    goto/16 :goto_0

    :cond_c
    const-string v0, "10.0.0.172"

    goto :goto_4

    :cond_d
    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_5
    sput-object v0, Lcom/baidu/location/ae;->r:Ljava/lang/String;

    move v0, v7

    goto/16 :goto_0

    :cond_e
    const-string v0, "10.0.0.200"

    goto :goto_5

    :cond_f
    const-string v1, "cmnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "uninet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "ctnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "3gnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    move v0, v8

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    const-string v1, "10.0.0.172"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, "10.0.0.172"

    sput-object v0, Lcom/baidu/location/ae;->r:Ljava/lang/String;

    move v0, v7

    goto/16 :goto_0

    :cond_12
    const-string v1, "10.0.0.200"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "10.0.0.200"

    sput-object v0, Lcom/baidu/location/ae;->r:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v7

    goto/16 :goto_0

    :cond_13
    move v0, v8

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v0, v6

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v6

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move-object v0, v9

    goto/16 :goto_3
.end method

.method public static c()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/config.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/f;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-wide v1, Lcom/baidu/location/ak;->n:D

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeDouble(D)V

    sget-wide v1, Lcom/baidu/location/ak;->o:D

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeDouble(D)V

    sget-boolean v1, Lcom/baidu/location/ak;->r:Z

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    sget-boolean v1, Lcom/baidu/location/ak;->r:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/baidu/location/ak;->q:[B

    if-eqz v1, :cond_2

    sget-object v1, Lcom/baidu/location/ak;->q:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d()I
    .locals 1

    sget v0, Lcom/baidu/location/ae;->c:I

    return v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/ae;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/ae;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()I
    .locals 1

    sget v0, Lcom/baidu/location/ae;->o:I

    return v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/ae;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()I
    .locals 1

    sget v0, Lcom/baidu/location/ae;->q:I

    return v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/ae;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k()I
    .locals 1

    sget v0, Lcom/baidu/location/ae;->s:I

    return v0
.end method

.method static synthetic l()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/baidu/location/ae;->u:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/ae;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/ae;->u:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o()Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/ae;->i:Z

    return v0
.end method

.method static synthetic p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/ae;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/ae;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/baidu/location/ae;->v:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic s()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/ae;->v:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic t()Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/ae;->j:Z

    return v0
.end method

.method static synthetic u()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/baidu/location/ae;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic v()I
    .locals 1

    sget v0, Lcom/baidu/location/ae;->t:I

    return v0
.end method

.method static synthetic w()Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/ae;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic x()Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/ae;->k:Z

    return v0
.end method

.method static synthetic y()Z
    .locals 1

    sget-boolean v0, Lcom/baidu/location/ae;->m:Z

    return v0
.end method

.method static synthetic z()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/ae;->h:Ljava/lang/String;

    return-object v0
.end method
