.class public Lsdk/b/a/a/c/r;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:Ljava/util/List;

.field private static d:Lsdk/b/a/a/c/t;

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput v1, Lsdk/b/a/a/c/r;->a:I

    sput v1, Lsdk/b/a/a/c/r;->b:I

    sget-object v0, Lsdk/b/a/a/c/t;->a:Lsdk/b/a/a/c/t;

    sput-object v0, Lsdk/b/a/a/c/r;->d:Lsdk/b/a/a/c/t;

    sput v1, Lsdk/b/a/a/c/r;->e:I

    return-void
.end method

.method public static a()V
    .locals 4

    invoke-static {}, Lsdk/b/a/a/c/r;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lsdk/b/a/a/c/r;->d:Lsdk/b/a/a/c/t;

    sget-object v1, Lsdk/b/a/a/c/t;->b:Lsdk/b/a/a/c/t;

    if-ne v0, v1, :cond_1

    sget v0, Lsdk/b/a/a/c/r;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lsdk/b/a/a/c/r;->a:I

    sget-object v1, Lsdk/b/a/a/c/d;->f:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    sput v0, Lsdk/b/a/a/c/r;->a:I

    sget-object v0, Lsdk/b/a/a/c/d;->f:[Ljava/lang/String;

    sget v1, Lsdk/b/a/a/c/r;->a:I

    aget-object v0, v0, v1

    :cond_0
    :goto_0
    const-string v1, "GexinSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<-------------> Const.SERVER_Address changed : form["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    return-void

    :cond_1
    sget v0, Lsdk/b/a/a/c/r;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lsdk/b/a/a/c/r;->a:I

    sget-object v1, Lsdk/b/a/a/c/d;->c:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    sput v0, Lsdk/b/a/a/c/r;->a:I

    sget-object v0, Lsdk/b/a/a/c/d;->c:[Ljava/lang/String;

    sget v1, Lsdk/b/a/a/c/r;->a:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 1

    sput-object p0, Lsdk/b/a/a/c/r;->c:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Lsdk/b/a/a/c/r;->b:I

    return-void
.end method

.method private static a(Lsdk/b/a/a/c/t;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lsdk/b/a/a/c/r;->d:Lsdk/b/a/a/c/t;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lsdk/b/a/a/c/r;->a(Ljava/util/List;)V

    :cond_0
    sget-object v0, Lsdk/b/a/a/c/s;->a:[I

    invoke-virtual {p0}, Lsdk/b/a/a/c/t;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    sput-object p0, Lsdk/b/a/a/c/r;->d:Lsdk/b/a/a/c/t;

    return-void

    :pswitch_0
    sget-object v0, Lsdk/b/a/a/c/r;->d:Lsdk/b/a/a/c/t;

    if-eq v0, p0, :cond_1

    sput v2, Lsdk/b/a/a/c/r;->e:I

    :cond_1
    :pswitch_1
    sget-object v0, Lsdk/b/a/a/c/d;->c:[Ljava/lang/String;

    aget-object v0, v0, v2

    sput-object v0, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    sget-object v0, Lsdk/b/a/a/c/d;->e:Ljava/lang/String;

    sput-object v0, Lsdk/b/a/a/c/d;->h:Ljava/lang/String;

    sget-object v0, Lsdk/b/a/a/c/d;->e:Ljava/lang/String;

    sput-object v0, Lsdk/b/a/a/c/d;->i:Ljava/lang/String;

    sget-object v0, Lsdk/b/a/a/c/d;->e:Ljava/lang/String;

    sput-object v0, Lsdk/b/a/a/c/d;->j:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lsdk/b/a/a/c/r;->d:Lsdk/b/a/a/c/t;

    if-eq v0, p0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lsdk/b/a/a/c/h;->b(J)Z

    :cond_2
    sget-object v0, Lsdk/b/a/a/c/d;->f:[Ljava/lang/String;

    aget-object v0, v0, v2

    sput-object v0, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    sget-object v0, Lsdk/b/a/a/c/d;->g:Ljava/lang/String;

    sput-object v0, Lsdk/b/a/a/c/d;->h:Ljava/lang/String;

    sget-object v0, Lsdk/b/a/a/c/d;->g:Ljava/lang/String;

    sput-object v0, Lsdk/b/a/a/c/d;->i:Ljava/lang/String;

    sget-object v0, Lsdk/b/a/a/c/d;->g:Ljava/lang/String;

    sput-object v0, Lsdk/b/a/a/c/d;->j:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static b()V
    .locals 4

    sget-object v0, Lsdk/b/a/a/c/s;->a:[I

    sget-object v1, Lsdk/b/a/a/c/r;->d:Lsdk/b/a/a/c/t;

    invoke-virtual {v1}, Lsdk/b/a/a/c/t;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lsdk/b/a/a/c/h;->s:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lsdk/b/a/a/c/t;->c:Lsdk/b/a/a/c/t;

    invoke-static {v0}, Lsdk/b/a/a/c/r;->a(Lsdk/b/a/a/c/t;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static c()V
    .locals 2

    sget-object v0, Lsdk/b/a/a/c/s;->a:[I

    sget-object v1, Lsdk/b/a/a/c/r;->d:Lsdk/b/a/a/c/t;

    invoke-virtual {v1}, Lsdk/b/a/a/c/t;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lsdk/b/a/a/c/h;->a(J)Z

    goto :goto_0

    :pswitch_2
    sget-object v0, Lsdk/b/a/a/c/t;->a:Lsdk/b/a/a/c/t;

    invoke-static {v0}, Lsdk/b/a/a/c/r;->a(Lsdk/b/a/a/c/t;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static d()V
    .locals 2

    invoke-static {}, Lsdk/b/a/a/c/r;->f()V

    sget-boolean v0, Lsdk/b/a/a/c/h;->y:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lsdk/b/a/a/c/h;->a(J)Z

    :cond_0
    sget-object v0, Lsdk/b/a/a/c/s;->a:[I

    sget-object v1, Lsdk/b/a/a/c/r;->d:Lsdk/b/a/a/c/t;

    invoke-virtual {v1}, Lsdk/b/a/a/c/t;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget v0, Lsdk/b/a/a/c/r;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lsdk/b/a/a/c/r;->e:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    sget-object v0, Lsdk/b/a/a/c/t;->b:Lsdk/b/a/a/c/t;

    invoke-static {v0}, Lsdk/b/a/a/c/r;->a(Lsdk/b/a/a/c/t;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static e()Ljava/lang/String;
    .locals 5

    sget-object v0, Lsdk/b/a/a/c/r;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    sget-object v0, Lsdk/b/a/a/c/r;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lsdk/b/a/a/c/r;->b:I

    sget-object v3, Lsdk/b/a/a/c/r;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    const/4 v0, 0x0

    sput v0, Lsdk/b/a/a/c/r;->b:I

    :cond_0
    sget-object v0, Lsdk/b/a/a/c/r;->c:Ljava/util/List;

    sget v3, Lsdk/b/a/a/c/r;->b:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/c/u;

    iget-wide v3, v0, Lsdk/b/a/a/c/u;->b:J

    cmp-long v3, v3, v1

    if-gez v3, :cond_1

    sget-object v3, Lsdk/b/a/a/c/r;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget v1, Lsdk/b/a/a/c/r;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lsdk/b/a/a/c/r;->b:I

    iget-object v0, v0, Lsdk/b/a/a/c/u;->a:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static f()V
    .locals 8

    const-wide/32 v6, 0x5265c00

    sget-object v0, Lsdk/b/a/a/c/s;->a:[I

    sget-object v1, Lsdk/b/a/a/c/r;->d:Lsdk/b/a/a/c/t;

    invoke-virtual {v1}, Lsdk/b/a/a/c/t;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lsdk/b/a/a/c/h;->r:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x4d3f6400

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    sget-wide v2, Lsdk/b/a/a/c/h;->s:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    sget-object v0, Lsdk/b/a/a/c/t;->c:Lsdk/b/a/a/c/t;

    invoke-static {v0}, Lsdk/b/a/a/c/r;->a(Lsdk/b/a/a/c/t;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lsdk/b/a/a/c/t;->b:Lsdk/b/a/a/c/t;

    invoke-static {v0}, Lsdk/b/a/a/c/r;->a(Lsdk/b/a/a/c/t;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lsdk/b/a/a/c/h;->s:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    sget-object v0, Lsdk/b/a/a/c/t;->c:Lsdk/b/a/a/c/t;

    invoke-static {v0}, Lsdk/b/a/a/c/r;->a(Lsdk/b/a/a/c/t;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
