.class public final enum Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;
.super Ljava/lang/Enum;
.source "AlipayOrderStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

.field public static final enum STATUS_NONE:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

.field public static final enum STAUS_CREATE_ORDER:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

.field public static final enum STAUS_MODIFIED:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

.field public static final enum STAUS_ORDER_CLOSED:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

.field public static final enum STAUS_PAY_FAIL:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

.field public static final enum STAUS_PAY_SUCCESS:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

.field public static final enum STAUS_USER_PAID:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;


# instance fields
.field private code:I

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 10
    new-instance v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    const-string v1, "STATUS_NONE"

    const-string v2, "\u672a\u5904\u7406"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STATUS_NONE:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    .line 11
    new-instance v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    const-string v1, "STAUS_CREATE_ORDER"

    const-string v2, "\u521b\u5efa\u652f\u4ed8\u5b9d\u8ba2\u5355"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STAUS_CREATE_ORDER:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    .line 12
    new-instance v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    const-string v1, "STAUS_USER_PAID"

    const-string v2, "\u7528\u6237\u5df2\u4ed8\u6b3e"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STAUS_USER_PAID:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    .line 13
    new-instance v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    const-string v1, "STAUS_ORDER_CLOSED"

    const-string v2, "\u652f\u4ed8\u5b9d\u8ba2\u5355\u5173\u95ed"

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STAUS_ORDER_CLOSED:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    .line 14
    new-instance v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    const-string v1, "STAUS_PAY_FAIL"

    const-string v2, "\u8fd8\u6b3e\u5931\u8d25"

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STAUS_PAY_FAIL:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    .line 15
    new-instance v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    const-string v1, "STAUS_PAY_SUCCESS"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string v4, "\u8fd8\u6b3e\u6210\u529f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STAUS_PAY_SUCCESS:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    .line 16
    new-instance v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    const-string v1, "STAUS_MODIFIED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-string v4, "\u8fd8\u6b3e\u88ab\u4fee\u6539"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STAUS_MODIFIED:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    sget-object v1, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STATUS_NONE:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STAUS_CREATE_ORDER:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STAUS_USER_PAID:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STAUS_ORDER_CLOSED:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STAUS_PAY_FAIL:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STAUS_PAY_SUCCESS:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STAUS_MODIFIED:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->$VALUES:[Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"
    .parameter "desc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->code:I

    .line 23
    iput-object p4, p0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->desc:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static getStatusByCode(I)Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;
    .locals 1
    .parameter "code"

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    sget-object v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STATUS_NONE:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    .line 58
    :goto_0
    return-object v0

    .line 45
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 46
    sget-object v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STAUS_CREATE_ORDER:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 48
    sget-object v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STAUS_USER_PAID:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 50
    sget-object v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STAUS_ORDER_CLOSED:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    goto :goto_0

    .line 51
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 52
    sget-object v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STAUS_PAY_FAIL:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    goto :goto_0

    .line 53
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 54
    sget-object v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STAUS_PAY_SUCCESS:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    goto :goto_0

    .line 55
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 56
    sget-object v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STAUS_MODIFIED:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    goto :goto_0

    .line 58
    :cond_6
    sget-object v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->STATUS_NONE:Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 8
    const-class v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    return-object v0
.end method

.method public static values()[Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->$VALUES:[Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    invoke-virtual {v0}, [Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->code:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 31
    iput p1, p0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->code:I

    .line 32
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zhangdan/app/activities/alipay/AlipayOrderStatus;->desc:Ljava/lang/String;

    .line 40
    return-void
.end method
