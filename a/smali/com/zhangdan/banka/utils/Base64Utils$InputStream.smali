.class public Lcom/zhangdan/banka/utils/Base64Utils$InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/banka/utils/Base64Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
.end annotation


# instance fields
.field private final alphabet:[B

.field private final breakLines:Z

.field private final buffer:[B

.field private final bufferLength:I

.field private final decodabet:[B

.field private final encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private final options:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 1351
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1352
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 4
    .parameter "in"
    .parameter "options"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1380
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1381
    and-int/lit8 v0, p2, 0x8

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->breakLines:Z

    .line 1382
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->encode:Z

    .line 1383
    iget-boolean v0, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_2
    iput v0, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->bufferLength:I

    .line 1384
    iget v0, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->buffer:[B

    .line 1385
    const/4 v0, -0x1

    iput v0, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->position:I

    .line 1386
    iput v2, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->lineLength:I

    .line 1387
    iput p2, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->options:I

    .line 1389
    #calls: Lcom/zhangdan/banka/utils/Base64Utils;->getAlphabet(I)[B
    invoke-static {p2}, Lcom/zhangdan/banka/utils/Base64Utils;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->alphabet:[B

    .line 1390
    #calls: Lcom/zhangdan/banka/utils/Base64Utils;->getDecodabet(I)[B
    invoke-static {p2}, Lcom/zhangdan/banka/utils/Base64Utils;->access$100(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->decodabet:[B

    .line 1391
    return-void

    :cond_0
    move v0, v2

    .line 1381
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1382
    goto :goto_1

    .line 1383
    :cond_2
    const/4 v0, 0x3

    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 1403
    iget v3, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->position:I

    if-gez v3, :cond_2

    .line 1404
    iget-boolean v3, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->encode:Z

    if-eqz v3, :cond_4

    .line 1405
    new-array v0, v4, [B

    .line 1406
    .local v0, b3:[B
    const/4 v2, 0x0

    .line 1407
    .local v2, numBinaryBytes:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v4, :cond_1

    .line 1409
    :try_start_0
    iget-object v3, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1412
    .local v6, b:I
    if-ltz v6, :cond_0

    .line 1413
    int-to-byte v3, v6

    aput-byte v3, v0, v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    add-int/lit8 v2, v2, 0x1

    .line 1407
    .end local v6           #b:I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1418
    :catch_0
    move-exception v8

    .line 1420
    .local v8, e:Ljava/io/IOException;
    if-nez v9, :cond_0

    .line 1421
    throw v8

    .line 1426
    .end local v8           #e:Ljava/io/IOException;
    :cond_1
    if-lez v2, :cond_3

    .line 1427
    iget-object v3, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->buffer:[B

    iget v5, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->options:I

    move v4, v1

    #calls: Lcom/zhangdan/banka/utils/Base64Utils;->encode3to4([BII[BII)[B
    invoke-static/range {v0 .. v5}, Lcom/zhangdan/banka/utils/Base64Utils;->access$200([BII[BII)[B

    .line 1428
    iput v1, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->position:I

    .line 1429
    iput v11, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->numSigBytes:I

    .line 1471
    .end local v0           #b3:[B
    .end local v2           #numBinaryBytes:I
    .end local v9           #i:I
    :cond_2
    :goto_1
    iget v3, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->position:I

    if-ltz v3, :cond_e

    .line 1473
    iget v3, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->position:I

    iget v4, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->numSigBytes:I

    if-lt v3, v4, :cond_b

    move v1, v10

    .line 1490
    :goto_2
    return v1

    .restart local v0       #b3:[B
    .restart local v2       #numBinaryBytes:I
    .restart local v9       #i:I
    :cond_3
    move v1, v10

    .line 1432
    goto :goto_2

    .line 1438
    .end local v0           #b3:[B
    .end local v2           #numBinaryBytes:I
    .end local v9           #i:I
    :cond_4
    new-array v7, v11, [B

    .line 1439
    .local v7, b4:[B
    const/4 v9, 0x0

    .line 1440
    .restart local v9       #i:I
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_7

    .line 1442
    const/4 v6, 0x0

    .line 1444
    .restart local v6       #b:I
    :cond_5
    iget-object v3, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1446
    if-ltz v6, :cond_6

    iget-object v3, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->decodabet:[B

    and-int/lit8 v4, v6, 0x7f

    aget-byte v3, v3, v4

    const/4 v4, -0x5

    if-le v3, v4, :cond_5

    .line 1448
    :cond_6
    if-gez v6, :cond_8

    .line 1454
    .end local v6           #b:I
    :cond_7
    if-ne v9, v11, :cond_9

    .line 1455
    iget-object v3, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->buffer:[B

    iget v4, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->options:I

    #calls: Lcom/zhangdan/banka/utils/Base64Utils;->decode4to3([BI[BII)I
    invoke-static {v7, v1, v3, v1, v4}, Lcom/zhangdan/banka/utils/Base64Utils;->access$300([BI[BII)I

    move-result v3

    iput v3, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->numSigBytes:I

    .line 1456
    iput v1, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->position:I

    goto :goto_1

    .line 1451
    .restart local v6       #b:I
    :cond_8
    int-to-byte v3, v6

    aput-byte v3, v7, v9

    .line 1440
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1458
    .end local v6           #b:I
    :cond_9
    if-nez v9, :cond_a

    move v1, v10

    .line 1459
    goto :goto_2

    .line 1463
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Improperly padded Base64 input."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1476
    .end local v7           #b4:[B
    .end local v9           #i:I
    :cond_b
    iget-boolean v3, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->encode:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->breakLines:Z

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->lineLength:I

    const/16 v4, 0x4c

    if-lt v3, v4, :cond_c

    .line 1477
    iput v1, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->lineLength:I

    .line 1478
    const/16 v1, 0xa

    goto :goto_2

    .line 1481
    :cond_c
    iget v1, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->lineLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->lineLength:I

    .line 1485
    iget-object v1, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->buffer:[B

    iget v3, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->position:I

    aget-byte v6, v1, v3

    .line 1487
    .restart local v6       #b:I
    iget v1, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->position:I

    iget v3, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->bufferLength:I

    if-lt v1, v3, :cond_d

    .line 1488
    iput v10, p0, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->position:I

    .line 1490
    :cond_d
    and-int/lit16 v1, v6, 0xff

    goto :goto_2

    .line 1498
    .end local v6           #b:I
    :cond_e
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Error in Base64 code reading stream."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([BII)I
    .locals 4
    .parameter "dest"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1522
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 1523
    invoke-virtual {p0}, Lcom/zhangdan/banka/utils/Base64Utils$InputStream;->read()I

    move-result v0

    .line 1528
    .local v0, b:I
    if-ltz v0, :cond_0

    .line 1529
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 1522
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1530
    :cond_0
    if-nez v1, :cond_1

    .line 1531
    const/4 v1, -0x1

    .line 1535
    .end local v0           #b:I
    .end local v1           #i:I
    :cond_1
    return v1
.end method
