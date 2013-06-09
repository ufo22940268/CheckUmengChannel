.class final Lcom/baidu/location/an;
.super Ljava/lang/Object;


# static fields
.field private static A:I

.field private static B:I

.field private static C:Landroid/location/Location;

.field private static D:Landroid/location/Location;

.field private static E:Landroid/location/Location;

.field private static F:Lcom/baidu/location/z;

.field private static a:Ljava/lang/String;

.field private static b:Ljava/util/ArrayList;

.field private static c:Ljava/util/ArrayList;

.field private static d:Ljava/util/ArrayList;

.field private static e:Ljava/util/ArrayList;

.field private static f:Ljava/util/ArrayList;

.field private static g:Ljava/util/ArrayList;

.field private static h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field private static m:Ljava/io/File;

.field private static n:I

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:I

.field private static s:I

.field private static t:I

.field private static u:I

.field private static v:D

.field private static w:D

.field private static x:D

.field private static y:D

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x400

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v0, "baidu_location_service"

    sput-object v0, Lcom/baidu/location/an;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/an;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/an;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/an;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/an;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/an;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/an;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yo.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/an;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yoh.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/an;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yom.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/an;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yol.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/an;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yor.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/an;->l:Ljava/lang/String;

    sput-object v2, Lcom/baidu/location/an;->m:Ljava/io/File;

    sput v4, Lcom/baidu/location/an;->n:I

    const/16 v0, 0x200

    sput v0, Lcom/baidu/location/an;->o:I

    sput v3, Lcom/baidu/location/an;->p:I

    const/4 v0, 0x5

    sput v0, Lcom/baidu/location/an;->q:I

    sput v3, Lcom/baidu/location/an;->r:I

    const/16 v0, 0x10

    sput v0, Lcom/baidu/location/an;->s:I

    sput v4, Lcom/baidu/location/an;->t:I

    const/16 v0, 0x100

    sput v0, Lcom/baidu/location/an;->u:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/location/an;->v:D

    const-wide v0, 0x3fb999999999999aL

    sput-wide v0, Lcom/baidu/location/an;->w:D

    const-wide/high16 v0, 0x403e

    sput-wide v0, Lcom/baidu/location/an;->x:D

    const-wide/high16 v0, 0x4059

    sput-wide v0, Lcom/baidu/location/an;->y:D

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/an;->z:I

    const/16 v0, 0x40

    sput v0, Lcom/baidu/location/an;->A:I

    const/16 v0, 0x80

    sput v0, Lcom/baidu/location/an;->B:I

    sput-object v2, Lcom/baidu/location/an;->C:Landroid/location/Location;

    sput-object v2, Lcom/baidu/location/an;->D:Landroid/location/Location;

    sput-object v2, Lcom/baidu/location/an;->E:Landroid/location/Location;

    sput-object v2, Lcom/baidu/location/an;->F:Lcom/baidu/location/z;

    return-void
.end method

.method private static a(Ljava/util/List;I)I
    .locals 12

    const/16 v9, 0x400

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/16 v1, 0x100

    if-gt p1, v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    :try_start_0
    sget-object v1, Lcom/baidu/location/an;->m:Ljava/io/File;

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/an;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/baidu/location/an;->m:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/baidu/location/an;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/an;->m:Ljava/io/File;

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/baidu/location/an;->m:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, -0x3

    goto :goto_0

    :cond_3
    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v6

    if-ltz v3, :cond_4

    if-lt v3, v4, :cond_6

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    if-gtz v1, :cond_7

    :cond_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, -0x4

    goto :goto_0

    :cond_6
    if-ltz v1, :cond_4

    if-gt v1, v4, :cond_4

    if-ltz v4, :cond_4

    if-gt v4, v9, :cond_4

    const/16 v8, 0x80

    if-lt v5, v8, :cond_4

    if-gt v5, v9, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    sget v0, Lcom/baidu/location/an;->t:I

    new-array v8, v0, [B

    sget v0, Lcom/baidu/location/an;->p:I

    :goto_2
    if-lez v0, :cond_9

    if-lez v1, :cond_9

    add-int v9, v3, v1

    add-int/lit8 v9, v9, -0x1

    rem-int/2addr v9, v4

    mul-int/2addr v9, v5

    int-to-long v9, v9

    add-long/2addr v9, v6

    invoke-virtual {v2, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    if-lez v9, :cond_8

    if-ge v9, v5, :cond_8

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v10, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    add-int/lit8 v10, v9, -0x1

    aget-byte v10, v8, v10

    if-nez v10, :cond_8

    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v10, v8, v11, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-interface {p0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_9
    int-to-long v8, p1

    invoke-virtual {v2, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    sget v1, Lcom/baidu/location/an;->p:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v0, v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x5

    goto/16 :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 9

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    move v2, v3

    move-object v0, v1

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_6

    if-ne v2, v3, :cond_0

    sget-object v4, Lcom/baidu/location/an;->i:Ljava/lang/String;

    sget-object v0, Lcom/baidu/location/an;->e:Ljava/util/ArrayList;

    move-object v8, v0

    move-object v0, v4

    move-object v4, v8

    :goto_1
    if-nez v4, :cond_4

    move-object v0, v1

    :goto_2
    if-nez v0, :cond_9

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    sget-object v4, Lcom/baidu/location/an;->j:Ljava/lang/String;

    sget-object v0, Lcom/baidu/location/an;->f:Ljava/util/ArrayList;

    move-object v8, v0

    move-object v0, v4

    move-object v4, v8

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne v2, v0, :cond_2

    sget-object v4, Lcom/baidu/location/an;->k:Ljava/lang/String;

    sget-object v0, Lcom/baidu/location/an;->g:Ljava/util/ArrayList;

    move-object v8, v0

    move-object v0, v4

    move-object v4, v8

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    if-ne v2, v0, :cond_3

    sget-object v4, Lcom/baidu/location/an;->l:Ljava/lang/String;

    sget-object v0, Lcom/baidu/location/an;->g:Ljava/util/ArrayList;

    move-object v8, v0

    move-object v0, v4

    move-object v4, v8

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_5

    sget-object v5, Lcom/baidu/location/an;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":get data from sd file..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    invoke-static {v0, v4}, Lcom/baidu/location/an;->a(Ljava/lang/String;Ljava/util/List;)Z

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/baidu/location/an;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    sget-object v1, Lcom/baidu/location/an;->g:Ljava/util/ArrayList;

    sget v2, Lcom/baidu/location/an;->A:I

    invoke-static {v1, v2}, Lcom/baidu/location/an;->a(Ljava/util/List;I)I

    sget-object v1, Lcom/baidu/location/an;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    sget-object v0, Lcom/baidu/location/an;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/an;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_7
    if-nez v0, :cond_9

    sget-object v1, Lcom/baidu/location/an;->g:Ljava/util/ArrayList;

    sget v2, Lcom/baidu/location/an;->z:I

    invoke-static {v1, v2}, Lcom/baidu/location/an;->a(Ljava/util/List;I)I

    sget-object v1, Lcom/baidu/location/an;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    sget-object v0, Lcom/baidu/location/an;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/an;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    if-nez v0, :cond_9

    sget-object v1, Lcom/baidu/location/an;->g:Ljava/util/ArrayList;

    sget v2, Lcom/baidu/location/an;->B:I

    invoke-static {v1, v2}, Lcom/baidu/location/an;->a(Ljava/util/List;I)I

    sget-object v1, Lcom/baidu/location/an;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    sget-object v0, Lcom/baidu/location/an;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/an;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    return-object v0

    :cond_a
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public static a(DDDD)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    :goto_0
    sput-wide p0, Lcom/baidu/location/an;->v:D

    sput-wide p2, Lcom/baidu/location/an;->w:D

    const-wide/high16 v0, 0x4034

    cmpl-double v0, p4, v0

    if-lez v0, :cond_1

    :goto_1
    sput-wide p4, Lcom/baidu/location/an;->x:D

    sput-wide p6, Lcom/baidu/location/an;->y:D

    return-void

    :cond_0
    sget-wide p0, Lcom/baidu/location/an;->v:D

    goto :goto_0

    :cond_1
    sget-wide p4, Lcom/baidu/location/an;->x:D

    goto :goto_1
.end method

.method private static a(IZ)V
    .locals 13

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    sget-object v1, Lcom/baidu/location/an;->i:Ljava/lang/String;

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/baidu/location/an;->e:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/baidu/location/f;->a:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_2
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v2, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/16 v0, 0x800

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/16 v0, 0x410

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_3
    :try_start_1
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v7, v3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x4

    invoke-virtual {v7, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move v6, v0

    move v0, v4

    :goto_4
    sget v4, Lcom/baidu/location/an;->r:I

    if-le v6, v4, :cond_d

    sget-object v4, Lcom/baidu/location/an;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    if-eqz p1, :cond_c

    add-int/lit8 v4, v0, 0x1

    :goto_5
    if-ge v3, v8, :cond_9

    mul-int v0, v9, v3

    add-int/lit16 v0, v0, 0x80

    int-to-long v10, v0

    invoke-virtual {v7, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v10, v0

    invoke-virtual {v7, v10}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v10, 0x0

    array-length v11, v0

    invoke-virtual {v7, v0, v10, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v12, v2

    move v2, v0

    move v0, v12

    :goto_6
    add-int/lit8 v3, v6, -0x1

    move v6, v3

    move v3, v2

    move v2, v0

    move v0, v4

    goto :goto_4

    :cond_4
    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    sget-object v1, Lcom/baidu/location/an;->j:Ljava/lang/String;

    if-eqz p1, :cond_5

    sget-object v0, Lcom/baidu/location/an;->e:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lcom/baidu/location/an;->f:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x3

    if-ne p0, v0, :cond_8

    sget-object v1, Lcom/baidu/location/an;->k:Ljava/lang/String;

    if-eqz p1, :cond_7

    sget-object v0, Lcom/baidu/location/an;->f:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_1

    :cond_7
    sget-object v0, Lcom/baidu/location/an;->g:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget-object v1, Lcom/baidu/location/an;->l:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/baidu/location/an;->g:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_1

    :cond_9
    if-eqz p1, :cond_b

    mul-int v0, v2, v9

    add-int/lit16 v0, v0, 0x80

    int-to-long v10, v0

    :try_start_2
    invoke-virtual {v7, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v10, v0

    invoke-virtual {v7, v10}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v10, 0x0

    array-length v11, v0

    invoke-virtual {v7, v0, v10, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    if-le v0, v3, :cond_a

    const/4 v0, 0x0

    :cond_a
    move v2, v3

    goto :goto_6

    :cond_b
    const/4 v0, 0x1

    move v1, v0

    move v0, v4

    :goto_7
    const-wide/16 v4, 0xc

    invoke-virtual {v7, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/an;->a(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_c
    move v4, v0

    goto/16 :goto_5

    :cond_d
    move v1, v5

    goto :goto_7

    :cond_e
    move-object v0, v2

    goto/16 :goto_2
.end method

.method public static a(Lcom/baidu/location/u;Lcom/baidu/location/z;Landroid/location/Location;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/baidu/location/ak;->Z:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/baidu/location/ak;->p:I

    if-ne v1, v2, :cond_2

    invoke-static {p2, p1}, Lcom/baidu/location/an;->a(Landroid/location/Location;Lcom/baidu/location/z;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/baidu/location/an;->a(Landroid/location/Location;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/baidu/location/u;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p2, p1}, Lcom/baidu/location/an;->a(Landroid/location/Location;Lcom/baidu/location/z;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object p1, v0

    :cond_3
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/baidu/location/ak;->a(Lcom/baidu/location/u;Lcom/baidu/location/z;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/baidu/location/Jni;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/an;->a(Ljava/lang/String;)V

    sput-object p2, Lcom/baidu/location/an;->D:Landroid/location/Location;

    sput-object p2, Lcom/baidu/location/an;->C:Landroid/location/Location;

    if-eqz p1, :cond_0

    sput-object p1, Lcom/baidu/location/an;->F:Lcom/baidu/location/z;

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/baidu/location/z;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p2, p1}, Lcom/baidu/location/an;->a(Landroid/location/Location;Lcom/baidu/location/z;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p2}, Lcom/baidu/location/an;->a(Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_1
    const/4 v1, 0x2

    invoke-static {v0, p1, p2, p3, v1}, Lcom/baidu/location/ak;->a(Lcom/baidu/location/u;Lcom/baidu/location/z;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/baidu/location/Jni;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/an;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    invoke-static {v0}, Lcom/baidu/location/an;->a(Ljava/lang/String;)V

    sput-object p2, Lcom/baidu/location/an;->E:Landroid/location/Location;

    sput-object p2, Lcom/baidu/location/an;->C:Landroid/location/Location;

    if-eqz p1, :cond_0

    sput-object p1, Lcom/baidu/location/an;->F:Lcom/baidu/location/z;

    goto :goto_0

    :cond_5
    invoke-static {p2}, Lcom/baidu/location/an;->a(Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_6

    move-object p0, v0

    :cond_6
    invoke-static {p2, p1}, Lcom/baidu/location/an;->a(Landroid/location/Location;Lcom/baidu/location/z;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    if-nez p0, :cond_7

    if-eqz v0, :cond_0

    :cond_7
    invoke-static {p0, v0, p2, p3, v2}, Lcom/baidu/location/ak;->a(Lcom/baidu/location/u;Lcom/baidu/location/z;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/baidu/location/Jni;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/an;->a(Ljava/lang/String;)V

    sput-object p2, Lcom/baidu/location/an;->C:Landroid/location/Location;

    if-eqz v0, :cond_0

    sput-object v0, Lcom/baidu/location/an;->F:Lcom/baidu/location/z;

    goto/16 :goto_0

    :cond_8
    move-object v0, p1

    goto :goto_2

    :cond_9
    move-object v0, p0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    sget v1, Lcom/baidu/location/ak;->k:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/baidu/location/an;->e:Ljava/util/ArrayList;

    :goto_0
    if-nez v0, :cond_3

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    sget-object v0, Lcom/baidu/location/an;->f:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    sget-object v0, Lcom/baidu/location/an;->g:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/baidu/location/an;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/baidu/location/an;->s:I

    if-gt v2, v3, :cond_4

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/baidu/location/an;->s:I

    if-lt v2, v3, :cond_5

    invoke-static {v1, v4}, Lcom/baidu/location/an;->a(IZ)V

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/baidu/location/an;->s:I

    if-le v1, v2, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static a(Landroid/location/Location;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/baidu/location/an;->D:Landroid/location/Location;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/baidu/location/an;->C:Landroid/location/Location;

    if-nez v2, :cond_3

    :cond_2
    sput-object p0, Lcom/baidu/location/an;->D:Landroid/location/Location;

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/baidu/location/an;->D:Landroid/location/Location;

    invoke-virtual {p0, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    float-to-double v2, v2

    sget v4, Lcom/baidu/location/ak;->M:F

    float-to-double v4, v4

    mul-double/2addr v4, v2

    mul-double/2addr v4, v2

    sget v6, Lcom/baidu/location/ak;->N:F

    float-to-double v6, v6

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    sget v4, Lcom/baidu/location/ak;->O:I

    int-to-double v4, v4

    add-double/2addr v2, v4

    sget-object v4, Lcom/baidu/location/an;->C:Landroid/location/Location;

    invoke-virtual {p0, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    float-to-double v4, v4

    cmpl-double v2, v4, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/location/Location;Lcom/baidu/location/z;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/baidu/location/z;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    sget-object v5, Lcom/baidu/location/an;->F:Lcom/baidu/location/z;

    iget-object v0, p1, Lcom/baidu/location/z;->a:Ljava/util/List;

    if-eqz v0, :cond_6

    if-eqz v5, :cond_6

    iget-object v0, v5, Lcom/baidu/location/z;->a:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, v5, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v0, p1, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_1
    move v4, v2

    :goto_2
    if-ge v4, v1, :cond_5

    iget-object v0, p1, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v7, v0, Landroid/net/wifi/ScanResult;->level:I

    iget-object v0, v5, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v8, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v0, v5, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eq v7, v0, :cond_4

    :cond_2
    move v0, v2

    :goto_3
    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, v5, Lcom/baidu/location/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    sget-object v0, Lcom/baidu/location/an;->E:Landroid/location/Location;

    if-nez v0, :cond_8

    sput-object p0, Lcom/baidu/location/an;->E:Landroid/location/Location;

    move v0, v3

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_0
.end method

.method public static a(Landroid/location/Location;Z)Z
    .locals 1

    sget-object v0, Lcom/baidu/location/an;->C:Landroid/location/Location;

    invoke-static {v0, p0, p1}, Lcom/baidu/location/n;->a(Landroid/location/Location;Landroid/location/Location;Z)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 11

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v5, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x8

    invoke-virtual {v5, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    sget v0, Lcom/baidu/location/an;->t:I

    new-array v7, v0, [B

    sget v0, Lcom/baidu/location/an;->r:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, 0x1

    move v4, v3

    move v3, v0

    move v0, v1

    :goto_1
    if-lez v3, :cond_3

    if-lez v4, :cond_3

    if-ge v4, v2, :cond_1

    move v2, v1

    :cond_1
    add-int/lit8 v8, v4, -0x1

    mul-int/2addr v8, v6

    add-int/lit16 v8, v8, 0x80

    int-to-long v8, v8

    :try_start_1
    invoke-virtual {v5, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    if-lez v8, :cond_2

    if-ge v8, v6, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    add-int/lit8 v9, v8, -0x1

    aget-byte v9, v7, v9

    if-nez v9, :cond_2

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v9, v7, v10, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    const-wide/16 v6, 0xc

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v5, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v5, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    const/4 v1, 0x0

    sput v1, Lcom/baidu/location/an;->r:I

    sget-object v0, Lcom/baidu/location/an;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    const/4 v0, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/an;->a(IZ)V

    const/4 v0, 0x2

    invoke-static {v0, v1}, Lcom/baidu/location/an;->a(IZ)V

    const/4 v0, 0x3

    invoke-static {v0, v1}, Lcom/baidu/location/an;->a(IZ)V

    const/16 v0, 0x8

    sput v0, Lcom/baidu/location/an;->r:I

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/location/an;->j:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const/16 v3, 0x80

    if-le v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "&p1="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :cond_1
    sget-object v1, Lcom/baidu/location/an;->k:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const/16 v3, 0x100

    if-le v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "&p2="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    :cond_2
    sget-object v1, Lcom/baidu/location/an;->l:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const/16 v3, 0x200

    if-le v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "&p3="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method
