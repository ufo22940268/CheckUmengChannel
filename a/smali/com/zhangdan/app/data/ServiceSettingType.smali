.class public final enum Lcom/zhangdan/app/data/ServiceSettingType;
.super Ljava/lang/Enum;
.source "ServiceSettingType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zhangdan/app/data/ServiceSettingType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zhangdan/app/data/ServiceSettingType;

.field public static final enum CARD_NO:Lcom/zhangdan/app/data/ServiceSettingType;

.field public static final enum CARD_NO_LAST_FOUR:Lcom/zhangdan/app/data/ServiceSettingType;

.field public static final enum CHECK_PWD:Lcom/zhangdan/app/data/ServiceSettingType;

.field public static final enum EMAIL:Lcom/zhangdan/app/data/ServiceSettingType;

.field public static final enum ID_NO_FULL:Lcom/zhangdan/app/data/ServiceSettingType;

.field private static TYPES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/zhangdan/app/data/ServiceSettingType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum YEAR_MONTH:Lcom/zhangdan/app/data/ServiceSettingType;


# instance fields
.field private code:I

.field private desc:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/zhangdan/app/data/ServiceSettingType;

    const-string v1, "ID_NO_FULL"

    const-string v3, "{$IdNo}"

    const-string v5, "\u8eab\u4efd\u8bc1\u53f7\u7801"

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/zhangdan/app/data/ServiceSettingType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/data/ServiceSettingType;->ID_NO_FULL:Lcom/zhangdan/app/data/ServiceSettingType;

    .line 21
    new-instance v3, Lcom/zhangdan/app/data/ServiceSettingType;

    const-string v4, "CARD_NO"

    const-string v6, "{$CardNo}"

    const-string v8, "\u5b8c\u6574\u5361\u53f7"

    move v5, v9

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/zhangdan/app/data/ServiceSettingType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO:Lcom/zhangdan/app/data/ServiceSettingType;

    .line 22
    new-instance v3, Lcom/zhangdan/app/data/ServiceSettingType;

    const-string v4, "CARD_NO_LAST_FOUR"

    const-string v6, "{$CardNoLastFour}"

    const-string v8, "\u5361\u53f7\u540e4\u4f4d"

    move v5, v10

    move v7, v10

    invoke-direct/range {v3 .. v8}, Lcom/zhangdan/app/data/ServiceSettingType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO_LAST_FOUR:Lcom/zhangdan/app/data/ServiceSettingType;

    .line 23
    new-instance v3, Lcom/zhangdan/app/data/ServiceSettingType;

    const-string v4, "CHECK_PWD"

    const-string v6, "{$CheckPass}"

    const-string v8, "\u67e5\u8be2\u5bc6\u7801"

    move v5, v11

    move v7, v11

    invoke-direct/range {v3 .. v8}, Lcom/zhangdan/app/data/ServiceSettingType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/zhangdan/app/data/ServiceSettingType;->CHECK_PWD:Lcom/zhangdan/app/data/ServiceSettingType;

    .line 24
    new-instance v3, Lcom/zhangdan/app/data/ServiceSettingType;

    const-string v4, "YEAR_MONTH"

    const-string v6, "{$YYYYMM}"

    const-string v8, "\u5e74\u6708(YYYYMM)"

    move v5, v12

    move v7, v12

    invoke-direct/range {v3 .. v8}, Lcom/zhangdan/app/data/ServiceSettingType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/zhangdan/app/data/ServiceSettingType;->YEAR_MONTH:Lcom/zhangdan/app/data/ServiceSettingType;

    .line 25
    new-instance v3, Lcom/zhangdan/app/data/ServiceSettingType;

    const-string v4, "EMAIL"

    const/4 v5, 0x5

    const-string v6, "{$Email}"

    const/4 v7, 0x5

    const-string v8, "\u7535\u5b50\u90ae\u7bb1"

    invoke-direct/range {v3 .. v8}, Lcom/zhangdan/app/data/ServiceSettingType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/zhangdan/app/data/ServiceSettingType;->EMAIL:Lcom/zhangdan/app/data/ServiceSettingType;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/zhangdan/app/data/ServiceSettingType;

    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->ID_NO_FULL:Lcom/zhangdan/app/data/ServiceSettingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO:Lcom/zhangdan/app/data/ServiceSettingType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO_LAST_FOUR:Lcom/zhangdan/app/data/ServiceSettingType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->CHECK_PWD:Lcom/zhangdan/app/data/ServiceSettingType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->YEAR_MONTH:Lcom/zhangdan/app/data/ServiceSettingType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v3, Lcom/zhangdan/app/data/ServiceSettingType;->EMAIL:Lcom/zhangdan/app/data/ServiceSettingType;

    aput-object v3, v0, v1

    sput-object v0, Lcom/zhangdan/app/data/ServiceSettingType;->$VALUES:[Lcom/zhangdan/app/data/ServiceSettingType;

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/zhangdan/app/data/ServiceSettingType;->TYPES:Landroid/util/SparseArray;

    .line 30
    sget-object v0, Lcom/zhangdan/app/data/ServiceSettingType;->TYPES:Landroid/util/SparseArray;

    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->ID_NO_FULL:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    sget-object v0, Lcom/zhangdan/app/data/ServiceSettingType;->TYPES:Landroid/util/SparseArray;

    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    sget-object v0, Lcom/zhangdan/app/data/ServiceSettingType;->TYPES:Landroid/util/SparseArray;

    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO_LAST_FOUR:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    sget-object v0, Lcom/zhangdan/app/data/ServiceSettingType;->TYPES:Landroid/util/SparseArray;

    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->CHECK_PWD:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/zhangdan/app/data/ServiceSettingType;->TYPES:Landroid/util/SparseArray;

    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->YEAR_MONTH:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v0, Lcom/zhangdan/app/data/ServiceSettingType;->TYPES:Landroid/util/SparseArray;

    const/4 v1, 0x5

    sget-object v2, Lcom/zhangdan/app/data/ServiceSettingType;->EMAIL:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .parameter "code"
    .parameter "desc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p4, p0, Lcom/zhangdan/app/data/ServiceSettingType;->code:I

    .line 44
    iput-object p3, p0, Lcom/zhangdan/app/data/ServiceSettingType;->value:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/zhangdan/app/data/ServiceSettingType;->desc:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static checkSettingType(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/data/ServiceSettingType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {p0}, Lcom/zhangdan/app/util/CommonMethod;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    const/4 v0, 0x0

    .line 107
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :cond_1
    const/4 v0, 0x0

    .line 82
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/ServiceSettingType;>;"
    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->ID_NO_FULL:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/ServiceSettingType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    if-nez v0, :cond_2

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/ServiceSettingType;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/ServiceSettingType;>;"
    :cond_2
    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->ID_NO_FULL:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_3
    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/ServiceSettingType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 88
    if-nez v0, :cond_4

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/ServiceSettingType;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/ServiceSettingType;>;"
    :cond_4
    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_5
    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO_LAST_FOUR:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/ServiceSettingType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 93
    if-nez v0, :cond_6

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/ServiceSettingType;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/ServiceSettingType;>;"
    :cond_6
    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->CARD_NO_LAST_FOUR:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_7
    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->CHECK_PWD:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/ServiceSettingType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 98
    if-nez v0, :cond_8

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/ServiceSettingType;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/ServiceSettingType;>;"
    :cond_8
    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->CHECK_PWD:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_9
    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->EMAIL:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/ServiceSettingType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    if-nez v0, :cond_a

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/ServiceSettingType;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/ServiceSettingType;>;"
    :cond_a
    sget-object v1, Lcom/zhangdan/app/data/ServiceSettingType;->EMAIL:Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zhangdan/app/data/ServiceSettingType;
    .locals 1
    .parameter "name"

    .prologue
    .line 18
    const-class v0, Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/ServiceSettingType;

    return-object v0
.end method

.method public static values()[Lcom/zhangdan/app/data/ServiceSettingType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/zhangdan/app/data/ServiceSettingType;->$VALUES:[Lcom/zhangdan/app/data/ServiceSettingType;

    invoke-virtual {v0}, [Lcom/zhangdan/app/data/ServiceSettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zhangdan/app/data/ServiceSettingType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/zhangdan/app/data/ServiceSettingType;->code:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zhangdan/app/data/ServiceSettingType;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zhangdan/app/data/ServiceSettingType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 53
    iput p1, p0, Lcom/zhangdan/app/data/ServiceSettingType;->code:I

    .line 54
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/zhangdan/app/data/ServiceSettingType;->desc:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/zhangdan/app/data/ServiceSettingType;->value:Ljava/lang/String;

    .line 62
    return-void
.end method
