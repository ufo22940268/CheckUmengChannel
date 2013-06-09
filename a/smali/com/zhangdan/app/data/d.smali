.class public final enum Lcom/zhangdan/app/data/d;
.super Ljava/lang/Enum;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final enum a:Lcom/zhangdan/app/data/d;

.field public static final enum b:Lcom/zhangdan/app/data/d;

.field public static final enum c:Lcom/zhangdan/app/data/d;

.field public static final enum d:Lcom/zhangdan/app/data/d;

.field public static final enum e:Lcom/zhangdan/app/data/d;

.field public static final enum f:Lcom/zhangdan/app/data/d;

.field private static g:Landroid/util/SparseArray;

.field private static final synthetic k:[Lcom/zhangdan/app/data/d;


# instance fields
.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/zhangdan/app/data/d;

    const-string v1, "ID_NO_FULL"

    const-string v3, "{$IdNo}"

    const-string v5, "\u8eab\u4efd\u8bc1\u53f7\u7801"

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/zhangdan/app/data/d;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/data/d;->a:Lcom/zhangdan/app/data/d;

    new-instance v3, Lcom/zhangdan/app/data/d;

    const-string v4, "CARD_NO"

    const-string v6, "{$CardNo}"

    const-string v8, "\u5b8c\u6574\u5361\u53f7"

    move v5, v9

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/zhangdan/app/data/d;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/zhangdan/app/data/d;->b:Lcom/zhangdan/app/data/d;

    new-instance v3, Lcom/zhangdan/app/data/d;

    const-string v4, "CARD_NO_LAST_FOUR"

    const-string v6, "{$CardNoLastFour}"

    const-string v8, "\u5361\u53f7\u540e4\u4f4d"

    move v5, v10

    move v7, v10

    invoke-direct/range {v3 .. v8}, Lcom/zhangdan/app/data/d;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/zhangdan/app/data/d;->c:Lcom/zhangdan/app/data/d;

    new-instance v3, Lcom/zhangdan/app/data/d;

    const-string v4, "CHECK_PWD"

    const-string v6, "{$CheckPass}"

    const-string v8, "\u67e5\u8be2\u5bc6\u7801"

    move v5, v11

    move v7, v11

    invoke-direct/range {v3 .. v8}, Lcom/zhangdan/app/data/d;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/zhangdan/app/data/d;->d:Lcom/zhangdan/app/data/d;

    new-instance v3, Lcom/zhangdan/app/data/d;

    const-string v4, "YEAR_MONTH"

    const-string v6, "{$YYYYMM}"

    const-string v8, "\u5e74\u6708(YYYYMM)"

    move v5, v12

    move v7, v12

    invoke-direct/range {v3 .. v8}, Lcom/zhangdan/app/data/d;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/zhangdan/app/data/d;->e:Lcom/zhangdan/app/data/d;

    new-instance v3, Lcom/zhangdan/app/data/d;

    const-string v4, "EMAIL"

    const/4 v5, 0x5

    const-string v6, "{$Email}"

    const/4 v7, 0x5

    const-string v8, "\u7535\u5b50\u90ae\u7bb1"

    invoke-direct/range {v3 .. v8}, Lcom/zhangdan/app/data/d;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/zhangdan/app/data/d;->f:Lcom/zhangdan/app/data/d;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/zhangdan/app/data/d;

    sget-object v1, Lcom/zhangdan/app/data/d;->a:Lcom/zhangdan/app/data/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zhangdan/app/data/d;->b:Lcom/zhangdan/app/data/d;

    aput-object v1, v0, v9

    sget-object v1, Lcom/zhangdan/app/data/d;->c:Lcom/zhangdan/app/data/d;

    aput-object v1, v0, v10

    sget-object v1, Lcom/zhangdan/app/data/d;->d:Lcom/zhangdan/app/data/d;

    aput-object v1, v0, v11

    sget-object v1, Lcom/zhangdan/app/data/d;->e:Lcom/zhangdan/app/data/d;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v3, Lcom/zhangdan/app/data/d;->f:Lcom/zhangdan/app/data/d;

    aput-object v3, v0, v1

    sput-object v0, Lcom/zhangdan/app/data/d;->k:[Lcom/zhangdan/app/data/d;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/zhangdan/app/data/d;->g:Landroid/util/SparseArray;

    sget-object v1, Lcom/zhangdan/app/data/d;->a:Lcom/zhangdan/app/data/d;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/zhangdan/app/data/d;->g:Landroid/util/SparseArray;

    sget-object v1, Lcom/zhangdan/app/data/d;->b:Lcom/zhangdan/app/data/d;

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/zhangdan/app/data/d;->g:Landroid/util/SparseArray;

    sget-object v1, Lcom/zhangdan/app/data/d;->c:Lcom/zhangdan/app/data/d;

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/zhangdan/app/data/d;->g:Landroid/util/SparseArray;

    sget-object v1, Lcom/zhangdan/app/data/d;->d:Lcom/zhangdan/app/data/d;

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/zhangdan/app/data/d;->g:Landroid/util/SparseArray;

    sget-object v1, Lcom/zhangdan/app/data/d;->e:Lcom/zhangdan/app/data/d;

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/zhangdan/app/data/d;->g:Landroid/util/SparseArray;

    const/4 v1, 0x5

    sget-object v2, Lcom/zhangdan/app/data/d;->f:Lcom/zhangdan/app/data/d;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lcom/zhangdan/app/data/d;->h:I

    iput-object p3, p0, Lcom/zhangdan/app/data/d;->i:Ljava/lang/String;

    iput-object p5, p0, Lcom/zhangdan/app/data/d;->j:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/zhangdan/app/data/d;->a:Lcom/zhangdan/app/data/d;

    iget-object v1, v1, Lcom/zhangdan/app/data/d;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/zhangdan/app/data/d;->a:Lcom/zhangdan/app/data/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v1, Lcom/zhangdan/app/data/d;->b:Lcom/zhangdan/app/data/d;

    iget-object v1, v1, Lcom/zhangdan/app/data/d;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    sget-object v1, Lcom/zhangdan/app/data/d;->b:Lcom/zhangdan/app/data/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v1, Lcom/zhangdan/app/data/d;->c:Lcom/zhangdan/app/data/d;

    iget-object v1, v1, Lcom/zhangdan/app/data/d;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    sget-object v1, Lcom/zhangdan/app/data/d;->c:Lcom/zhangdan/app/data/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-object v1, Lcom/zhangdan/app/data/d;->d:Lcom/zhangdan/app/data/d;

    iget-object v1, v1, Lcom/zhangdan/app/data/d;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    sget-object v1, Lcom/zhangdan/app/data/d;->d:Lcom/zhangdan/app/data/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-object v1, Lcom/zhangdan/app/data/d;->f:Lcom/zhangdan/app/data/d;

    iget-object v1, v1, Lcom/zhangdan/app/data/d;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    sget-object v1, Lcom/zhangdan/app/data/d;->f:Lcom/zhangdan/app/data/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zhangdan/app/data/d;
    .locals 1

    const-class v0, Lcom/zhangdan/app/data/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/d;

    return-object v0
.end method

.method public static values()[Lcom/zhangdan/app/data/d;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/zhangdan/app/data/d;->k:[Lcom/zhangdan/app/data/d;

    array-length v1, v0

    new-array v2, v1, [Lcom/zhangdan/app/data/d;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/zhangdan/app/data/d;->h:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/data/d;->j:Ljava/lang/String;

    return-object v0
.end method
