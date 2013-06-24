.class public Lcom/tencent/weibo/oauthv1/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"


# static fields
.field private static final encodeTable:[C

.field private static final last2byte:C

.field private static final last4byte:C

.field private static final last6byte:C

.field private static final lead2byte:C

.field private static final lead4byte:C

.field private static final lead6byte:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 5
    const-string v0, "00000011"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    .line 4
    sput-char v0, Lcom/tencent/weibo/oauthv1/Base64Encoder;->last2byte:C

    .line 7
    const-string v0, "00001111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    .line 6
    sput-char v0, Lcom/tencent/weibo/oauthv1/Base64Encoder;->last4byte:C

    .line 9
    const-string v0, "00111111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    .line 8
    sput-char v0, Lcom/tencent/weibo/oauthv1/Base64Encoder;->last6byte:C

    .line 11
    const-string v0, "11111100"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    .line 10
    sput-char v0, Lcom/tencent/weibo/oauthv1/Base64Encoder;->lead6byte:C

    .line 13
    const-string v0, "11110000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    .line 12
    sput-char v0, Lcom/tencent/weibo/oauthv1/Base64Encoder;->lead4byte:C

    .line 15
    const-string v0, "11000000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    .line 14
    sput-char v0, Lcom/tencent/weibo/oauthv1/Base64Encoder;->lead2byte:C

    .line 16
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/weibo/oauthv1/Base64Encoder;->encodeTable:[C

    .line 3
    return-void

    .line 16
    nop

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 8
    .parameter "from"

    .prologue
    .line 28
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v4, p0

    int-to-double v4, v4

    const-wide v6, 0x3ff570a3d70a3d71L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 29
    .local v3, to:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 30
    .local v2, num:I
    const/4 v0, 0x0

    .line 31
    .local v0, currentByte:C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p0

    if-lt v1, v4, :cond_1

    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v1, v4, 0x4

    :goto_1
    if-gtz v1, :cond_4

    .line 66
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 32
    :cond_1
    rem-int/lit8 v2, v2, 0x8

    .line 33
    :goto_2
    const/16 v4, 0x8

    if-lt v2, v4, :cond_2

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 57
    :cond_3
    :goto_3
    :pswitch_0
    sget-object v4, Lcom/tencent/weibo/oauthv1/Base64Encoder;->encodeTable:[C

    aget-char v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 58
    add-int/lit8 v2, v2, 0x6

    goto :goto_2

    .line 36
    :pswitch_1
    aget-byte v4, p0, v1

    sget-char v5, Lcom/tencent/weibo/oauthv1/Base64Encoder;->lead6byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    .line 37
    ushr-int/lit8 v4, v0, 0x2

    int-to-char v0, v4

    .line 38
    goto :goto_3

    .line 40
    :pswitch_2
    aget-byte v4, p0, v1

    sget-char v5, Lcom/tencent/weibo/oauthv1/Base64Encoder;->last6byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    .line 41
    goto :goto_3

    .line 43
    :pswitch_3
    aget-byte v4, p0, v1

    sget-char v5, Lcom/tencent/weibo/oauthv1/Base64Encoder;->last4byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    .line 44
    shl-int/lit8 v4, v0, 0x2

    int-to-char v0, v4

    .line 45
    add-int/lit8 v4, v1, 0x1

    array-length v5, p0

    if-ge v4, v5, :cond_3

    .line 46
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    sget-char v5, Lcom/tencent/weibo/oauthv1/Base64Encoder;->lead2byte:C

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v0

    int-to-char v0, v4

    .line 48
    goto :goto_3

    .line 50
    :pswitch_4
    aget-byte v4, p0, v1

    sget-char v5, Lcom/tencent/weibo/oauthv1/Base64Encoder;->last2byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    .line 51
    shl-int/lit8 v4, v0, 0x4

    int-to-char v0, v4

    .line 52
    add-int/lit8 v4, v1, 0x1

    array-length v5, p0

    if-ge v4, v5, :cond_3

    .line 53
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    sget-char v5, Lcom/tencent/weibo/oauthv1/Base64Encoder;->lead4byte:C

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v0

    int-to-char v0, v4

    goto :goto_3

    .line 63
    :cond_4
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
