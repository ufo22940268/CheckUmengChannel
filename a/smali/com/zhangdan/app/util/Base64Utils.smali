.class public Lcom/zhangdan/app/util/Base64Utils;
.super Ljava/lang/Object;
.source "Base64Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/util/Base64Utils$OutputStream;,
        Lcom/zhangdan/app/util/Base64Utils$InputStream;
    }
.end annotation


# static fields
.field public static final DECODE:I = 0x0

.field public static final DONT_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final URL_SAFE:I = 0x10

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x7f

    const/16 v1, 0x40

    .line 143
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zhangdan/app/util/Base64Utils;->_STANDARD_ALPHABET:[B

    .line 162
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zhangdan/app/util/Base64Utils;->_STANDARD_DECODABET:[B

    .line 212
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/zhangdan/app/util/Base64Utils;->_URL_SAFE_ALPHABET:[B

    .line 230
    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/zhangdan/app/util/Base64Utils;->_URL_SAFE_DECODABET:[B

    .line 282
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/zhangdan/app/util/Base64Utils;->_ORDERED_ALPHABET:[B

    .line 300
    new-array v0, v2, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/zhangdan/app/util/Base64Utils;->_ORDERED_DECODABET:[B

    return-void

    .line 143
    nop

    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 162
    :array_1
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data

    .line 212
    :array_2
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 230
    :array_3
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data

    .line 282
    :array_4
    .array-data 0x1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data

    .line 300
    :array_5
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0xf7t
        0xf7t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x25t
        0xf7t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    return-void
.end method

.method static synthetic access$000(I)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-static {p0}, Lcom/zhangdan/app/util/Base64Utils;->getAlphabet(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(I)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-static {p0}, Lcom/zhangdan/app/util/Base64Utils;->getDecodabet(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200([BII[BII)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 76
    invoke-static/range {p0 .. p5}, Lcom/zhangdan/app/util/Base64Utils;->encode3to4([BII[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300([BI[BII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 76
    invoke-static {p0, p1, p2, p3, p4}, Lcom/zhangdan/app/util/Base64Utils;->decode4to3([BI[BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$400([B[BII)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 76
    invoke-static {p0, p1, p2, p3}, Lcom/zhangdan/app/util/Base64Utils;->encode3to4([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .parameter "s"

    .prologue
    .line 968
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zhangdan/app/util/Base64Utils;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 14
    .parameter "s"
    .parameter "options"

    .prologue
    const/4 v13, 0x0

    .line 985
    :try_start_0
    const-string v11, "UTF-8"

    invoke-virtual {p0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 993
    .local v5, bytes:[B
    :goto_0
    array-length v11, v5

    invoke-static {v5, v13, v11, p1}, Lcom/zhangdan/app/util/Base64Utils;->decode([BIII)[B

    move-result-object v5

    .line 997
    if-eqz v5, :cond_0

    array-length v11, v5

    const/4 v12, 0x4

    if-lt v11, v12, :cond_0

    .line 999
    aget-byte v11, v5, v13

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x1

    aget-byte v12, v5, v12

    shl-int/lit8 v12, v12, 0x8

    const v13, 0xff00

    and-int/2addr v12, v13

    or-int v8, v11, v12

    .line 1000
    .local v8, head:I
    const v11, 0x8b1f

    if-ne v11, v8, :cond_0

    .line 1001
    const/4 v0, 0x0

    .line 1002
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    const/4 v6, 0x0

    .line 1003
    .local v6, gzis:Ljava/util/zip/GZIPInputStream;
    const/4 v2, 0x0

    .line 1004
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x800

    new-array v4, v11, [B

    .line 1005
    .local v4, buffer:[B
    const/4 v9, 0x0

    .line 1008
    .local v9, length:I
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    .line 1009
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .local v3, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    .line 1010
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    :try_start_3
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d

    .line 1012
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .local v7, gzis:Ljava/util/zip/GZIPInputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v7, v4}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v9

    if-ltz v9, :cond_1

    .line 1013
    const/4 v11, 0x0

    invoke-virtual {v3, v4, v11, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1020
    :catch_0
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .line 1025
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1029
    :goto_3
    :try_start_6
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1033
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 1041
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #buffer:[B
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .end local v8           #head:I
    .end local v9           #length:I
    :cond_0
    :goto_5
    return-object v5

    .line 987
    .end local v5           #bytes:[B
    :catch_1
    move-exception v10

    .line 988
    .local v10, uee:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .restart local v5       #bytes:[B
    goto :goto_0

    .line 1017
    .end local v10           #uee:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #buffer:[B
    .restart local v7       #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v8       #head:I
    .restart local v9       #length:I
    :cond_1
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v5

    .line 1025
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1029
    :goto_6
    :try_start_a
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1033
    :goto_7
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_5

    .line 1034
    :catch_2
    move-exception v11

    goto :goto_5

    .line 1024
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    :catchall_0
    move-exception v11

    .line 1025
    :goto_8
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 1029
    :goto_9
    :try_start_d
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 1033
    :goto_a
    :try_start_e
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 1035
    :goto_b
    throw v11

    .line 1026
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #gzis:Ljava/util/zip/GZIPInputStream;
    :catch_3
    move-exception v11

    goto :goto_6

    .line 1030
    :catch_4
    move-exception v11

    goto :goto_7

    .line 1026
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    :catch_5
    move-exception v11

    goto :goto_3

    .line 1030
    :catch_6
    move-exception v11

    goto :goto_4

    .line 1034
    :catch_7
    move-exception v11

    goto :goto_5

    .line 1026
    :catch_8
    move-exception v12

    goto :goto_9

    .line 1030
    :catch_9
    move-exception v12

    goto :goto_a

    .line 1034
    :catch_a
    move-exception v12

    goto :goto_b

    .line 1024
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_8

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_8

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #gzis:Ljava/util/zip/GZIPInputStream;
    :catchall_3
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v6       #gzis:Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_8

    .line 1020
    :catch_b
    move-exception v11

    goto :goto_2

    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_c
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_d
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_2
.end method

.method public static decode([BIII)[B
    .locals 15
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "options"

    .prologue
    .line 913
    invoke-static/range {p3 .. p3}, Lcom/zhangdan/app/util/Base64Utils;->getDecodabet(I)[B

    move-result-object v1

    .line 915
    .local v1, DECODABET:[B
    mul-int/lit8 v12, p2, 0x3

    div-int/lit8 v6, v12, 0x4

    .line 916
    .local v6, len34:I
    new-array v8, v6, [B

    .line 917
    .local v8, outBuff:[B
    const/4 v9, 0x0

    .line 919
    .local v9, outBuffPosn:I
    const/4 v12, 0x4

    new-array v2, v12, [B

    .line 920
    .local v2, b4:[B
    const/4 v3, 0x0

    .line 921
    .local v3, b4Posn:I
    const/4 v5, 0x0

    .line 922
    .local v5, i:I
    const/4 v10, 0x0

    .line 923
    .local v10, sbiCrop:B
    const/4 v11, 0x0

    .line 924
    .local v11, sbiDecode:B
    move/from16 v5, p1

    move v4, v3

    .end local v3           #b4Posn:I
    .local v4, b4Posn:I
    :goto_0
    add-int v12, p1, p2

    if-ge v5, v12, :cond_3

    .line 925
    aget-byte v12, p0, v5

    and-int/lit8 v12, v12, 0x7f

    int-to-byte v10, v12

    .line 926
    aget-byte v11, v1, v10

    .line 928
    const/4 v12, -0x5

    if-lt v11, v12, :cond_0

    .line 931
    const/4 v12, -0x1

    if-lt v11, v12, :cond_1

    .line 932
    add-int/lit8 v3, v4, 0x1

    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    aput-byte v10, v2, v4

    .line 933
    const/4 v12, 0x3

    if-le v3, v12, :cond_2

    .line 934
    const/4 v12, 0x0

    move/from16 v0, p3

    invoke-static {v2, v12, v8, v9, v0}, Lcom/zhangdan/app/util/Base64Utils;->decode4to3([BI[BII)I

    move-result v12

    add-int/2addr v9, v12

    .line 936
    const/4 v3, 0x0

    .line 939
    const/16 v12, 0x3d

    if-ne v10, v12, :cond_2

    .line 953
    :goto_1
    new-array v7, v9, [B

    .line 954
    .local v7, out:[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v8, v12, v7, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 955
    .end local v7           #out:[B
    :goto_2
    return-object v7

    .line 947
    .end local v3           #b4Posn:I
    .restart local v4       #b4Posn:I
    :cond_0
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad Base64 input character at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-byte v14, p0, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "(decimal)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 949
    const/4 v7, 0x0

    move v3, v4

    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    goto :goto_2

    .end local v3           #b4Posn:I
    .restart local v4       #b4Posn:I
    :cond_1
    move v3, v4

    .line 924
    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3           #b4Posn:I
    .restart local v4       #b4Posn:I
    goto :goto_0

    :cond_3
    move v3, v4

    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    goto :goto_1
.end method

.method private static decode4to3([BI[BII)I
    .locals 5
    .parameter "source"
    .parameter "srcOffset"
    .parameter "destination"
    .parameter "destOffset"
    .parameter "options"

    .prologue
    const/16 v4, 0x3d

    .line 833
    invoke-static {p4}, Lcom/zhangdan/app/util/Base64Utils;->getDecodabet(I)[B

    move-result-object v0

    .line 836
    .local v0, DECODABET:[B
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_0

    .line 841
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int v2, v3, v4

    .line 844
    .local v2, outBuff:I
    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 845
    const/4 v3, 0x1

    .line 893
    .end local v2           #outBuff:I
    :goto_0
    return v3

    .line 849
    :cond_0
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_1

    .line 855
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    or-int v2, v3, v4

    .line 859
    .restart local v2       #outBuff:I
    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 860
    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 861
    const/4 v3, 0x2

    goto :goto_0

    .line 874
    .end local v2           #outBuff:I
    :cond_1
    :try_start_0
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 879
    .restart local v2       #outBuff:I
    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 880
    add-int/lit8 v3, p3, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 881
    add-int/lit8 v3, p3, 0x2

    int-to-byte v4, v2

    aput-byte v4, p2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    const/4 v3, 0x3

    goto :goto_0

    .line 884
    .end local v2           #outBuff:I
    :catch_0
    move-exception v1

    .line 893
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "infile"
    .parameter "outfile"

    .prologue
    .line 1300
    invoke-static {p0}, Lcom/zhangdan/app/util/Base64Utils;->decodeFromFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1301
    .local v0, decoded:[B
    const/4 v2, 0x0

    .line 1303
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1305
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1312
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 1316
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 1313
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 1315
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_0

    .line 1307
    :catch_1
    move-exception v1

    .line 1308
    .local v1, ex:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1312
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1313
    :catch_2
    move-exception v4

    goto :goto_0

    .line 1311
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1312
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1314
    :goto_3
    throw v4

    .line 1313
    :catch_3
    move-exception v5

    goto :goto_3

    .line 1311
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_2

    .line 1307
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .locals 12
    .parameter "filename"

    .prologue
    .line 1166
    const/4 v3, 0x0

    .line 1167
    .local v3, decodedData:[B
    const/4 v0, 0x0

    .line 1170
    .local v0, bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1171
    .local v5, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 1172
    .local v2, buffer:[B
    const/4 v6, 0x0

    .line 1173
    .local v6, length:I
    const/4 v7, 0x0

    .line 1176
    .local v7, numBytes:I
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 1177
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File is too big for this convenience method ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes)."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1180
    const/4 v8, 0x0

    .line 1202
    :try_start_1
    invoke-virtual {v0}, Lcom/zhangdan/app/util/Base64Utils$InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1207
    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    :goto_0
    return-object v8

    .line 1182
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v2, v8, [B

    .line 1185
    new-instance v1, Lcom/zhangdan/app/util/Base64Utils$InputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lcom/zhangdan/app/util/Base64Utils$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1189
    .end local v0           #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .local v1, bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    :goto_1
    const/16 v8, 0x1000

    :try_start_3
    invoke-virtual {v1, v2, v6, v8}, Lcom/zhangdan/app/util/Base64Utils$InputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_1

    .line 1190
    add-int/2addr v6, v7

    goto :goto_1

    .line 1193
    :cond_1
    new-array v3, v6, [B

    .line 1194
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v8, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 1202
    :try_start_4
    invoke-virtual {v1}, Lcom/zhangdan/app/util/Base64Utils$InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    .end local v1           #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    .restart local v0       #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    :goto_2
    move-object v8, v3

    .line 1207
    goto :goto_0

    .line 1203
    .end local v0           #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .restart local v1       #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :catch_0
    move-exception v8

    move-object v0, v1

    .line 1205
    .end local v1           #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .restart local v0       #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    goto :goto_2

    .line 1197
    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    :catch_1
    move-exception v4

    .line 1198
    .local v4, e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error decoding from file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1202
    :try_start_6
    invoke-virtual {v0}, Lcom/zhangdan/app/util/Base64Utils$InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 1203
    :catch_2
    move-exception v8

    goto :goto_2

    .line 1201
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 1202
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Lcom/zhangdan/app/util/Base64Utils$InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1204
    :goto_5
    throw v8

    .line 1203
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :catch_3
    move-exception v9

    goto :goto_0

    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    :catch_4
    move-exception v9

    goto :goto_5

    .line 1201
    .end local v0           #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .restart local v1       #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .restart local v0       #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    goto :goto_4

    .line 1197
    .end local v0           #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .restart local v1       #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1           #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .restart local v0       #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    goto :goto_3
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "dataToDecode"
    .parameter "filename"

    .prologue
    .line 1135
    const/4 v3, 0x0

    .line 1136
    .local v3, success:Z
    const/4 v0, 0x0

    .line 1138
    .local v0, bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    :try_start_0
    new-instance v1, Lcom/zhangdan/app/util/Base64Utils$OutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1140
    .end local v0           #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .local v1, bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    :try_start_1
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1141
    const/4 v3, 0x1

    .line 1148
    :try_start_2
    invoke-virtual {v1}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 1153
    .end local v1           #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v0       #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    :goto_0
    return v3

    .line 1149
    .end local v0           #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v1       #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 1151
    .end local v1           #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v0       #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    goto :goto_0

    .line 1143
    :catch_1
    move-exception v2

    .line 1144
    .local v2, e:Ljava/io/IOException;
    :goto_1
    const/4 v3, 0x0

    .line 1148
    :try_start_3
    invoke-virtual {v0}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1149
    :catch_2
    move-exception v4

    goto :goto_0

    .line 1147
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1148
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1150
    :goto_3
    throw v4

    .line 1149
    :catch_3
    move-exception v5

    goto :goto_3

    .line 1147
    .end local v0           #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v1       #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v0       #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    goto :goto_2

    .line 1143
    .end local v0           #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v1       #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v0       #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    goto :goto_1
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .parameter "encodedObject"

    .prologue
    .line 1055
    invoke-static {p0}, Lcom/zhangdan/app/util/Base64Utils;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 1057
    .local v4, objBytes:[B
    const/4 v0, 0x0

    .line 1058
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 1059
    .local v5, ois:Ljava/io/ObjectInputStream;
    const/4 v3, 0x0

    .line 1062
    .local v3, obj:Ljava/lang/Object;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1063
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_a

    .line 1065
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .local v6, ois:Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_b

    move-result-object v3

    .line 1077
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1081
    :goto_0
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .line 1086
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #obj:Ljava/lang/Object;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    :goto_1
    return-object v3

    .line 1082
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #obj:Ljava/lang/Object;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v7

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .line 1084
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_1

    .line 1067
    :catch_1
    move-exception v2

    .line 1068
    .local v2, e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1069
    const/4 v3, 0x0

    .line 1077
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1081
    :goto_3
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 1082
    :catch_2
    move-exception v7

    goto :goto_1

    .line 1071
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 1072
    .local v2, e:Ljava/lang/ClassNotFoundException;
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1073
    const/4 v3, 0x0

    .line 1077
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 1081
    :goto_5
    :try_start_a
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_1

    .line 1082
    :catch_4
    move-exception v7

    goto :goto_1

    .line 1076
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v7

    .line 1077
    :goto_6
    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 1081
    :goto_7
    :try_start_c
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 1083
    :goto_8
    throw v7

    .line 1078
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v7

    goto :goto_0

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v7

    goto :goto_3

    .local v2, e:Ljava/lang/ClassNotFoundException;
    :catch_7
    move-exception v7

    goto :goto_5

    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_8
    move-exception v8

    goto :goto_7

    .line 1082
    :catch_9
    move-exception v8

    goto :goto_8

    .line 1076
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .line 1071
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    :catch_a
    move-exception v2

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :catch_b
    move-exception v2

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 1067
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    :catch_c
    move-exception v2

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    :catch_d
    move-exception v2

    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_2
.end method

.method private static encode3to4([BII[BII)[B
    .locals 6
    .parameter "source"
    .parameter "srcOffset"
    .parameter "numSigBytes"
    .parameter "destination"
    .parameter "destOffset"
    .parameter "options"

    .prologue
    const/16 v5, 0x3d

    const/4 v2, 0x0

    .line 476
    invoke-static {p5}, Lcom/zhangdan/app/util/Base64Utils;->getAlphabet(I)[B

    move-result-object v0

    .line 490
    .local v0, ALPHABET:[B
    if-lez p2, :cond_1

    aget-byte v3, p0, p1

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x8

    move v4, v3

    :goto_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_2

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    :goto_1
    or-int/2addr v3, v4

    const/4 v4, 0x2

    if-le p2, v4, :cond_0

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    :cond_0
    or-int v1, v3, v2

    .line 494
    .local v1, inBuff:I
    packed-switch p2, :pswitch_data_0

    .line 517
    :goto_2
    return-object p3

    .end local v1           #inBuff:I
    :cond_1
    move v4, v2

    .line 490
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    .line 496
    .restart local v1       #inBuff:I
    :pswitch_0
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 497
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 498
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 499
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    goto :goto_2

    .line 503
    :pswitch_1
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 504
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 505
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 506
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2

    .line 510
    :pswitch_2
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 511
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 512
    add-int/lit8 v2, p4, 0x2

    aput-byte v5, p3, v2

    .line 513
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2

    .line 494
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static encode3to4([B[BII)[B
    .locals 6
    .parameter "b4"
    .parameter "threeBytes"
    .parameter "numSigBytes"
    .parameter "options"

    .prologue
    const/4 v1, 0x0

    .line 440
    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/zhangdan/app/util/Base64Utils;->encode3to4([BII[BII)[B

    .line 441
    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 631
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lcom/zhangdan/app/util/Base64Utils;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "options"

    .prologue
    .line 660
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/zhangdan/app/util/Base64Utils;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 1
    .parameter "source"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 675
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/zhangdan/app/util/Base64Utils;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .locals 24
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "options"

    .prologue
    .line 711
    and-int/lit8 v16, p3, 0x8

    .line 712
    .local v16, dontBreakLines:I
    and-int/lit8 v17, p3, 0x2

    .line 715
    .local v17, gzip:I
    const/4 v4, 0x2

    move/from16 v0, v17

    if-ne v0, v4, :cond_0

    .line 716
    const/4 v12, 0x0

    .line 717
    .local v12, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x0

    .line 718
    .local v18, gzos:Ljava/util/zip/GZIPOutputStream;
    const/4 v10, 0x0

    .line 722
    .local v10, b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    :try_start_0
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .local v13, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v11, Lcom/zhangdan/app/util/Base64Utils$OutputStream;

    or-int/lit8 v4, p3, 0x1

    invoke-direct {v11, v13, v4}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c

    .line 724
    .end local v10           #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .local v11, b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    :try_start_2
    new-instance v19, Ljava/util/zip/GZIPOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d

    .line 726
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local v19, gzos:Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 727
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e

    .line 735
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 739
    :goto_0
    :try_start_5
    invoke-virtual {v11}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 743
    :goto_1
    :try_start_6
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 750
    :goto_2
    :try_start_7
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2

    .line 792
    .end local v11           #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v19           #gzos:Ljava/util/zip/GZIPOutputStream;
    :goto_3
    return-object v4

    .line 729
    .restart local v10       #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v8

    .line 730
    .local v8, e:Ljava/io/IOException;
    :goto_4
    :try_start_8
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 731
    const/4 v4, 0x0

    .line 735
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 739
    :goto_5
    :try_start_a
    invoke-virtual {v10}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 743
    :goto_6
    :try_start_b
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_3

    .line 744
    :catch_1
    move-exception v5

    goto :goto_3

    .line 734
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 735
    :goto_7
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 739
    :goto_8
    :try_start_d
    invoke-virtual {v10}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 743
    :goto_9
    :try_start_e
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 745
    :goto_a
    throw v4

    .line 752
    .end local v10           #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v11       #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_2
    move-exception v23

    .line 753
    .local v23, uue:Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    goto :goto_3

    .line 760
    .end local v11           #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v19           #gzos:Ljava/util/zip/GZIPOutputStream;
    .end local v23           #uue:Ljava/io/UnsupportedEncodingException;
    :cond_0
    if-nez v16, :cond_2

    const/4 v14, 0x1

    .line 762
    .local v14, breakLines:Z
    :goto_b
    mul-int/lit8 v4, p2, 0x4

    div-int/lit8 v21, v4, 0x3

    .line 763
    .local v21, len43:I
    rem-int/lit8 v4, p2, 0x3

    if-lez v4, :cond_3

    const/4 v4, 0x4

    :goto_c
    add-int v5, v21, v4

    if-eqz v14, :cond_4

    div-int/lit8 v4, v21, 0x4c

    :goto_d
    add-int/2addr v4, v5

    new-array v7, v4, [B

    .line 767
    .local v7, outBuff:[B
    const/4 v15, 0x0

    .line 768
    .local v15, d:I
    const/4 v8, 0x0

    .line 769
    .local v8, e:I
    add-int/lit8 v20, p2, -0x2

    .line 770
    .local v20, len2:I
    const/16 v22, 0x0

    .line 771
    .local v22, lineLength:I
    :goto_e
    move/from16 v0, v20

    if-ge v15, v0, :cond_5

    .line 772
    add-int v5, v15, p1

    const/4 v6, 0x3

    move-object/from16 v4, p0

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Lcom/zhangdan/app/util/Base64Utils;->encode3to4([BII[BII)[B

    .line 774
    add-int/lit8 v22, v22, 0x4

    .line 775
    if-eqz v14, :cond_1

    const/16 v4, 0x4c

    move/from16 v0, v22

    if-ne v0, v4, :cond_1

    .line 776
    add-int/lit8 v4, v8, 0x4

    const/16 v5, 0xa

    aput-byte v5, v7, v4

    .line 777
    add-int/lit8 v8, v8, 0x1

    .line 778
    const/16 v22, 0x0

    .line 771
    :cond_1
    add-int/lit8 v15, v15, 0x3

    add-int/lit8 v8, v8, 0x4

    goto :goto_e

    .line 760
    .end local v7           #outBuff:[B
    .end local v8           #e:I
    .end local v14           #breakLines:Z
    .end local v15           #d:I
    .end local v20           #len2:I
    .end local v21           #len43:I
    .end local v22           #lineLength:I
    :cond_2
    const/4 v14, 0x0

    goto :goto_b

    .line 763
    .restart local v14       #breakLines:Z
    .restart local v21       #len43:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_c

    :cond_4
    const/4 v4, 0x0

    goto :goto_d

    .line 782
    .restart local v7       #outBuff:[B
    .restart local v8       #e:I
    .restart local v15       #d:I
    .restart local v20       #len2:I
    .restart local v22       #lineLength:I
    :cond_5
    move/from16 v0, p2

    if-ge v15, v0, :cond_6

    .line 783
    add-int v5, v15, p1

    sub-int v6, p2, v15

    move-object/from16 v4, p0

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Lcom/zhangdan/app/util/Base64Utils;->encode3to4([BII[BII)[B

    .line 784
    add-int/lit8 v8, v8, 0x4

    .line 789
    :cond_6
    :try_start_f
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "UTF-8"

    invoke-direct {v4, v7, v5, v8, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_3

    .line 791
    :catch_3
    move-exception v23

    .line 792
    .restart local v23       #uue:Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v7, v5, v8}, Ljava/lang/String;-><init>([BII)V

    goto/16 :goto_3

    .line 736
    .end local v7           #outBuff:[B
    .end local v8           #e:I
    .end local v14           #breakLines:Z
    .end local v15           #d:I
    .end local v20           #len2:I
    .end local v21           #len43:I
    .end local v22           #lineLength:I
    .end local v23           #uue:Ljava/io/UnsupportedEncodingException;
    .restart local v11       #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_4
    move-exception v4

    goto/16 :goto_0

    .line 740
    :catch_5
    move-exception v4

    goto/16 :goto_1

    .line 744
    :catch_6
    move-exception v4

    goto/16 :goto_2

    .line 736
    .end local v11           #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v19           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local v8, e:Ljava/io/IOException;
    .restart local v10       #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_7
    move-exception v5

    goto/16 :goto_5

    .line 740
    :catch_8
    move-exception v5

    goto/16 :goto_6

    .line 736
    .end local v8           #e:Ljava/io/IOException;
    :catch_9
    move-exception v5

    goto/16 :goto_8

    .line 740
    :catch_a
    move-exception v5

    goto/16 :goto_9

    .line 744
    :catch_b
    move-exception v5

    goto/16 :goto_a

    .line 734
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v4

    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_7

    .end local v10           #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v4

    move-object v10, v11

    .end local v11           #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v10       #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_7

    .end local v10           #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v11       #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v4

    move-object v10, v11

    .end local v11           #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v10       #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    move-object/from16 v18, v19

    .end local v19           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_7

    .line 729
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_c
    move-exception v8

    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4

    .end local v10           #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_d
    move-exception v8

    move-object v10, v11

    .end local v11           #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v10       #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4

    .end local v10           #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v11       #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_e
    move-exception v8

    move-object v10, v11

    .end local v11           #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v10       #b64os:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    move-object/from16 v18, v19

    .end local v19           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4
.end method

.method public static encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "infile"
    .parameter "outfile"

    .prologue
    .line 1272
    invoke-static {p0}, Lcom/zhangdan/app/util/Base64Utils;->encodeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1273
    .local v0, encoded:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1275
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1277
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    const-string v4, "US-ASCII"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1284
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 1288
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 1285
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 1287
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_0

    .line 1279
    :catch_1
    move-exception v1

    .line 1280
    .local v1, ex:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1284
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1285
    :catch_2
    move-exception v4

    goto :goto_0

    .line 1283
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1284
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1286
    :goto_3
    throw v4

    .line 1285
    :catch_3
    move-exception v5

    goto :goto_3

    .line 1283
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_2

    .line 1279
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "filename"

    .prologue
    .line 1220
    const/4 v4, 0x0

    .line 1221
    .local v4, encodedData:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1224
    .local v0, bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1225
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-double v9, v9

    const-wide v11, 0x3ff6666666666666L

    mul-double/2addr v9, v11

    double-to-int v9, v9

    const/16 v10, 0x28

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v2, v9, [B

    .line 1233
    .local v2, buffer:[B
    const/4 v7, 0x0

    .line 1234
    .local v7, length:I
    const/4 v8, 0x0

    .line 1237
    .local v8, numBytes:I
    new-instance v1, Lcom/zhangdan/app/util/Base64Utils$InputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v10, 0x1

    invoke-direct {v1, v9, v10}, Lcom/zhangdan/app/util/Base64Utils$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1241
    .end local v0           #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .local v1, bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    :goto_0
    const/16 v9, 0x1000

    :try_start_1
    invoke-virtual {v1, v2, v7, v9}, Lcom/zhangdan/app/util/Base64Utils$InputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_0

    .line 1242
    add-int/2addr v7, v8

    goto :goto_0

    .line 1245
    :cond_0
    new-instance v5, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    invoke-direct {v5, v2, v9, v7, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1254
    .end local v4           #encodedData:Ljava/lang/String;
    .local v5, encodedData:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v1}, Lcom/zhangdan/app/util/Base64Utils$InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .end local v1           #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .restart local v0       #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    move-object v4, v5

    .line 1259
    .end local v2           #buffer:[B
    .end local v5           #encodedData:Ljava/lang/String;
    .end local v6           #file:Ljava/io/File;
    .end local v7           #length:I
    .end local v8           #numBytes:I
    .restart local v4       #encodedData:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 1255
    .end local v0           #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .end local v4           #encodedData:Ljava/lang/String;
    .restart local v1       #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .restart local v2       #buffer:[B
    .restart local v5       #encodedData:Ljava/lang/String;
    .restart local v6       #file:Ljava/io/File;
    .restart local v7       #length:I
    .restart local v8       #numBytes:I
    :catch_0
    move-exception v9

    move-object v0, v1

    .end local v1           #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .restart local v0       #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    move-object v4, v5

    .line 1257
    .end local v5           #encodedData:Ljava/lang/String;
    .restart local v4       #encodedData:Ljava/lang/String;
    goto :goto_1

    .line 1249
    .end local v2           #buffer:[B
    .end local v6           #file:Ljava/io/File;
    .end local v7           #length:I
    .end local v8           #numBytes:I
    :catch_1
    move-exception v3

    .line 1250
    .local v3, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error encoding from file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1254
    :try_start_4
    invoke-virtual {v0}, Lcom/zhangdan/app/util/Base64Utils$InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1255
    :catch_2
    move-exception v9

    goto :goto_1

    .line 1253
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1254
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Lcom/zhangdan/app/util/Base64Utils$InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1256
    :goto_4
    throw v9

    .line 1255
    :catch_3
    move-exception v10

    goto :goto_4

    .line 1253
    .end local v0           #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .restart local v1       #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .restart local v2       #buffer:[B
    .restart local v6       #file:Ljava/io/File;
    .restart local v7       #length:I
    .restart local v8       #numBytes:I
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1           #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .restart local v0       #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    goto :goto_3

    .line 1249
    .end local v0           #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .restart local v1       #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    .restart local v0       #bis:Lcom/zhangdan/app/util/Base64Utils$InputStream;
    goto :goto_2
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 1
    .parameter "serializableObject"

    .prologue
    .line 533
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zhangdan/app/util/Base64Utils;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .locals 14
    .parameter "serializableObject"
    .parameter "options"

    .prologue
    .line 566
    const/4 v2, 0x0

    .line 567
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 568
    .local v0, b64os:Ljava/io/OutputStream;
    const/4 v8, 0x0

    .line 569
    .local v8, oos:Ljava/io/ObjectOutputStream;
    const/4 v6, 0x0

    .line 572
    .local v6, gzos:Ljava/util/zip/GZIPOutputStream;
    and-int/lit8 v5, p1, 0x2

    .line 577
    .local v5, gzip:I
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .local v3, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v1, Lcom/zhangdan/app/util/Base64Utils$OutputStream;

    or-int/lit8 v11, p1, 0x1

    invoke-direct {v1, v3, v11}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    .line 581
    .end local v0           #b64os:Ljava/io/OutputStream;
    .local v1, b64os:Ljava/io/OutputStream;
    const/4 v11, 0x2

    if-ne v5, v11, :cond_0

    .line 582
    :try_start_2
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v7, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f

    .line 583
    .end local v6           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local v7, gzos:Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    new-instance v9, Ljava/io/ObjectOutputStream;

    invoke-direct {v9, v7}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10

    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .local v9, oos:Ljava/io/ObjectOutputStream;
    move-object v6, v7

    .end local v7           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v6       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v8, v9

    .line 588
    .end local v9           #oos:Ljava/io/ObjectOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    :goto_0
    :try_start_4
    invoke-virtual {v8, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f

    .line 596
    :try_start_5
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 600
    :goto_1
    :try_start_6
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 604
    :goto_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 608
    :goto_3
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 615
    :goto_4
    :try_start_9
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_2

    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .line 618
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    :goto_5
    return-object v11

    .line 586
    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :cond_0
    :try_start_a
    new-instance v9, Ljava/io/ObjectOutputStream;

    invoke-direct {v9, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f

    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v9       #oos:Ljava/io/ObjectOutputStream;
    move-object v8, v9

    .end local v9           #oos:Ljava/io/ObjectOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 590
    .end local v1           #b64os:Ljava/io/OutputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    .line 591
    .local v4, e:Ljava/io/IOException;
    :goto_6
    :try_start_b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 592
    const/4 v11, 0x0

    .line 596
    :try_start_c
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 600
    :goto_7
    :try_start_d
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 604
    :goto_8
    :try_start_e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 608
    :goto_9
    :try_start_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_5

    .line 609
    :catch_1
    move-exception v12

    goto :goto_5

    .line 595
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 596
    :goto_a
    :try_start_10
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    .line 600
    :goto_b
    :try_start_11
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    .line 604
    :goto_c
    :try_start_12
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    .line 608
    :goto_d
    :try_start_13
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    .line 610
    :goto_e
    throw v11

    .line 617
    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v10

    .line 618
    .local v10, uue:Ljava/io/UnsupportedEncodingException;
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 597
    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v10           #uue:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v11

    goto :goto_1

    .line 601
    :catch_4
    move-exception v11

    goto :goto_2

    .line 605
    :catch_5
    move-exception v11

    goto :goto_3

    .line 609
    :catch_6
    move-exception v11

    goto :goto_4

    .line 597
    .end local v1           #b64os:Ljava/io/OutputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #e:Ljava/io/IOException;
    :catch_7
    move-exception v12

    goto :goto_7

    .line 601
    :catch_8
    move-exception v12

    goto :goto_8

    .line 605
    :catch_9
    move-exception v12

    goto :goto_9

    .line 597
    .end local v4           #e:Ljava/io/IOException;
    :catch_a
    move-exception v12

    goto :goto_b

    .line 601
    :catch_b
    move-exception v12

    goto :goto_c

    .line 605
    :catch_c
    move-exception v12

    goto :goto_d

    .line 609
    :catch_d
    move-exception v12

    goto :goto_e

    .line 595
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_a

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v11

    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_a

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v11

    move-object v6, v7

    .end local v7           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v6       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_a

    .line 590
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_e
    move-exception v4

    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_f
    move-exception v4

    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_10
    move-exception v4

    move-object v6, v7

    .end local v7           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v6       #gzos:Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_6
.end method

.method public static encodeToFile([BLjava/lang/String;)Z
    .locals 6
    .parameter "dataToEncode"
    .parameter "filename"

    .prologue
    .line 1101
    const/4 v3, 0x0

    .line 1102
    .local v3, success:Z
    const/4 v0, 0x0

    .line 1104
    .local v0, bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    :try_start_0
    new-instance v1, Lcom/zhangdan/app/util/Base64Utils$OutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1106
    .end local v0           #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .local v1, bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1107
    const/4 v3, 0x1

    .line 1115
    :try_start_2
    invoke-virtual {v1}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 1120
    .end local v1           #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v0       #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    :goto_0
    return v3

    .line 1116
    .end local v0           #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v1       #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 1118
    .end local v1           #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v0       #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    goto :goto_0

    .line 1109
    :catch_1
    move-exception v2

    .line 1111
    .local v2, e:Ljava/io/IOException;
    :goto_1
    const/4 v3, 0x0

    .line 1115
    :try_start_3
    invoke-virtual {v0}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1116
    :catch_2
    move-exception v4

    goto :goto_0

    .line 1114
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1115
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1117
    :goto_3
    throw v4

    .line 1116
    :catch_3
    move-exception v5

    goto :goto_3

    .line 1114
    .end local v0           #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v1       #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v0       #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    goto :goto_2

    .line 1109
    .end local v0           #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v1       #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    .restart local v0       #bos:Lcom/zhangdan/app/util/Base64Utils$OutputStream;
    goto :goto_1
.end method

.method private static final getAlphabet(I)[B
    .locals 2
    .parameter "options"

    .prologue
    .line 354
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 355
    sget-object v0, Lcom/zhangdan/app/util/Base64Utils;->_URL_SAFE_ALPHABET:[B

    .line 359
    :goto_0
    return-object v0

    .line 356
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 357
    sget-object v0, Lcom/zhangdan/app/util/Base64Utils;->_ORDERED_ALPHABET:[B

    goto :goto_0

    .line 359
    :cond_1
    sget-object v0, Lcom/zhangdan/app/util/Base64Utils;->_STANDARD_ALPHABET:[B

    goto :goto_0
.end method

.method private static final getDecodabet(I)[B
    .locals 2
    .parameter "options"

    .prologue
    .line 370
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 371
    sget-object v0, Lcom/zhangdan/app/util/Base64Utils;->_URL_SAFE_DECODABET:[B

    .line 375
    :goto_0
    return-object v0

    .line 372
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 373
    sget-object v0, Lcom/zhangdan/app/util/Base64Utils;->_ORDERED_DECODABET:[B

    goto :goto_0

    .line 375
    :cond_1
    sget-object v0, Lcom/zhangdan/app/util/Base64Utils;->_STANDARD_DECODABET:[B

    goto :goto_0
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 5
    .parameter "args"

    .prologue
    .line 389
    array-length v3, p0

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 390
    const-string v3, "Not enough arguments."

    invoke-static {v3}, Lcom/zhangdan/app/util/Base64Utils;->usage(Ljava/lang/String;)V

    .line 406
    :goto_0
    return-void

    .line 393
    :cond_0
    const/4 v3, 0x0

    aget-object v0, p0, v3

    .line 394
    .local v0, flag:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v1, p0, v3

    .line 395
    .local v1, infile:Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v2, p0, v3

    .line 396
    .local v2, outfile:Ljava/lang/String;
    const-string v3, "-e"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    invoke-static {v1, v2}, Lcom/zhangdan/app/util/Base64Utils;->encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_1
    const-string v3, "-d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 400
    invoke-static {v1, v2}, Lcom/zhangdan/app/util/Base64Utils;->decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zhangdan/app/util/Base64Utils;->usage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static final usage(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 415
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 416
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: java Base64 -e|-d inputfile outputfile"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    return-void
.end method
