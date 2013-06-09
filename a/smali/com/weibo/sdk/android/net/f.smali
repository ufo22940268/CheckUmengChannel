.class public final enum Lcom/weibo/sdk/android/net/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/weibo/sdk/android/net/f;

.field public static final enum b:Lcom/weibo/sdk/android/net/f;

.field public static final enum c:Lcom/weibo/sdk/android/net/f;

.field private static final synthetic d:[Lcom/weibo/sdk/android/net/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/weibo/sdk/android/net/f;

    const-string v1, "Mobile"

    invoke-direct {v0, v1, v2}, Lcom/weibo/sdk/android/net/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/weibo/sdk/android/net/f;->a:Lcom/weibo/sdk/android/net/f;

    new-instance v0, Lcom/weibo/sdk/android/net/f;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v3}, Lcom/weibo/sdk/android/net/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/weibo/sdk/android/net/f;->b:Lcom/weibo/sdk/android/net/f;

    new-instance v0, Lcom/weibo/sdk/android/net/f;

    const-string v1, "NOWAY"

    invoke-direct {v0, v1, v4}, Lcom/weibo/sdk/android/net/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/weibo/sdk/android/net/f;->c:Lcom/weibo/sdk/android/net/f;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/weibo/sdk/android/net/f;

    sget-object v1, Lcom/weibo/sdk/android/net/f;->a:Lcom/weibo/sdk/android/net/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/weibo/sdk/android/net/f;->b:Lcom/weibo/sdk/android/net/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/weibo/sdk/android/net/f;->c:Lcom/weibo/sdk/android/net/f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/weibo/sdk/android/net/f;->d:[Lcom/weibo/sdk/android/net/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/weibo/sdk/android/net/f;
    .locals 1

    const-class v0, Lcom/weibo/sdk/android/net/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/weibo/sdk/android/net/f;

    return-object v0
.end method

.method public static values()[Lcom/weibo/sdk/android/net/f;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/weibo/sdk/android/net/f;->d:[Lcom/weibo/sdk/android/net/f;

    array-length v1, v0

    new-array v2, v1, [Lcom/weibo/sdk/android/net/f;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
