.class public final enum Lcom/zhangdan/app/activities/alipay/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/zhangdan/app/activities/alipay/f;

.field public static final enum b:Lcom/zhangdan/app/activities/alipay/f;

.field public static final enum c:Lcom/zhangdan/app/activities/alipay/f;

.field public static final enum d:Lcom/zhangdan/app/activities/alipay/f;

.field public static final enum e:Lcom/zhangdan/app/activities/alipay/f;

.field public static final enum f:Lcom/zhangdan/app/activities/alipay/f;

.field public static final enum g:Lcom/zhangdan/app/activities/alipay/f;

.field private static final synthetic j:[Lcom/zhangdan/app/activities/alipay/f;


# instance fields
.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/zhangdan/app/activities/alipay/f;

    const-string v1, "STATUS_NONE"

    const-string v2, "\u672a\u5904\u7406"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/zhangdan/app/activities/alipay/f;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/activities/alipay/f;->a:Lcom/zhangdan/app/activities/alipay/f;

    new-instance v0, Lcom/zhangdan/app/activities/alipay/f;

    const-string v1, "STAUS_CREATE_ORDER"

    const-string v2, "\u521b\u5efa\u652f\u4ed8\u5b9d\u8ba2\u5355"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/zhangdan/app/activities/alipay/f;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/activities/alipay/f;->b:Lcom/zhangdan/app/activities/alipay/f;

    new-instance v0, Lcom/zhangdan/app/activities/alipay/f;

    const-string v1, "STAUS_USER_PAID"

    const-string v2, "\u7528\u6237\u5df2\u4ed8\u6b3e"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/zhangdan/app/activities/alipay/f;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/activities/alipay/f;->c:Lcom/zhangdan/app/activities/alipay/f;

    new-instance v0, Lcom/zhangdan/app/activities/alipay/f;

    const-string v1, "STAUS_ORDER_CLOSED"

    const-string v2, "\u652f\u4ed8\u5b9d\u8ba2\u5355\u5173\u95ed"

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/zhangdan/app/activities/alipay/f;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/activities/alipay/f;->d:Lcom/zhangdan/app/activities/alipay/f;

    new-instance v0, Lcom/zhangdan/app/activities/alipay/f;

    const-string v1, "STAUS_PAY_FAIL"

    const-string v2, "\u8fd8\u6b3e\u5931\u8d25"

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/zhangdan/app/activities/alipay/f;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/activities/alipay/f;->e:Lcom/zhangdan/app/activities/alipay/f;

    new-instance v0, Lcom/zhangdan/app/activities/alipay/f;

    const-string v1, "STAUS_PAY_SUCCESS"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string v4, "\u8fd8\u6b3e\u6210\u529f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zhangdan/app/activities/alipay/f;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/activities/alipay/f;->f:Lcom/zhangdan/app/activities/alipay/f;

    new-instance v0, Lcom/zhangdan/app/activities/alipay/f;

    const-string v1, "STAUS_MODIFIED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-string v4, "\u8fd8\u6b3e\u88ab\u4fee\u6539"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zhangdan/app/activities/alipay/f;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zhangdan/app/activities/alipay/f;->g:Lcom/zhangdan/app/activities/alipay/f;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/zhangdan/app/activities/alipay/f;

    sget-object v1, Lcom/zhangdan/app/activities/alipay/f;->a:Lcom/zhangdan/app/activities/alipay/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zhangdan/app/activities/alipay/f;->b:Lcom/zhangdan/app/activities/alipay/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zhangdan/app/activities/alipay/f;->c:Lcom/zhangdan/app/activities/alipay/f;

    aput-object v1, v0, v7

    sget-object v1, Lcom/zhangdan/app/activities/alipay/f;->d:Lcom/zhangdan/app/activities/alipay/f;

    aput-object v1, v0, v8

    sget-object v1, Lcom/zhangdan/app/activities/alipay/f;->e:Lcom/zhangdan/app/activities/alipay/f;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/zhangdan/app/activities/alipay/f;->f:Lcom/zhangdan/app/activities/alipay/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/zhangdan/app/activities/alipay/f;->g:Lcom/zhangdan/app/activities/alipay/f;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zhangdan/app/activities/alipay/f;->j:[Lcom/zhangdan/app/activities/alipay/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/zhangdan/app/activities/alipay/f;->h:I

    iput-object p4, p0, Lcom/zhangdan/app/activities/alipay/f;->i:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/zhangdan/app/activities/alipay/f;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/zhangdan/app/activities/alipay/f;->a:Lcom/zhangdan/app/activities/alipay/f;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/zhangdan/app/activities/alipay/f;->b:Lcom/zhangdan/app/activities/alipay/f;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/zhangdan/app/activities/alipay/f;->c:Lcom/zhangdan/app/activities/alipay/f;

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/zhangdan/app/activities/alipay/f;->d:Lcom/zhangdan/app/activities/alipay/f;

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    sget-object v0, Lcom/zhangdan/app/activities/alipay/f;->e:Lcom/zhangdan/app/activities/alipay/f;

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    sget-object v0, Lcom/zhangdan/app/activities/alipay/f;->f:Lcom/zhangdan/app/activities/alipay/f;

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    sget-object v0, Lcom/zhangdan/app/activities/alipay/f;->g:Lcom/zhangdan/app/activities/alipay/f;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/zhangdan/app/activities/alipay/f;->a:Lcom/zhangdan/app/activities/alipay/f;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zhangdan/app/activities/alipay/f;
    .locals 1

    const-class v0, Lcom/zhangdan/app/activities/alipay/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/alipay/f;

    return-object v0
.end method

.method public static values()[Lcom/zhangdan/app/activities/alipay/f;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/zhangdan/app/activities/alipay/f;->j:[Lcom/zhangdan/app/activities/alipay/f;

    array-length v1, v0

    new-array v2, v1, [Lcom/zhangdan/app/activities/alipay/f;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/alipay/f;->i:Ljava/lang/String;

    return-object v0
.end method
