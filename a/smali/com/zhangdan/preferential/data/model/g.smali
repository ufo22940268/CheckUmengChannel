.class public final Lcom/zhangdan/preferential/data/model/g;
.super Lcom/zhangdan/preferential/data/model/m;

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/preferential/data/model/m;-><init>()V

    return-void
.end method

.method public static a()Lcom/zhangdan/preferential/data/model/g;
    .locals 2

    new-instance v0, Lcom/zhangdan/preferential/data/model/g;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/g;-><init>()V

    const/4 v1, -0x8

    iput v1, v0, Lcom/zhangdan/preferential/data/model/g;->c:I

    const-string v1, "\u4eca\u65e5"

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Lcom/zhangdan/preferential/data/model/g;
    .locals 2

    new-instance v0, Lcom/zhangdan/preferential/data/model/g;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/g;-><init>()V

    const-string v1, "\u9644\u8fd1"

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/g;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/zhangdan/preferential/data/model/g;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/zhangdan/preferential/data/model/g;

    iget-object v2, p0, Lcom/zhangdan/preferential/data/model/g;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/zhangdan/preferential/data/model/g;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/preferential/data/model/g;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/zhangdan/preferential/data/model/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/data/model/g;->d:Ljava/lang/String;

    return-object v0
.end method
