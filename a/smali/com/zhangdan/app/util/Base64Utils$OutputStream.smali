.class public Lcom/zhangdan/app/util/Base64Utils$OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/util/Base64Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
.end annotation


# instance fields
.field private final alphabet:[B

.field private final b4:[B

.field private final breakLines:Z

.field private buffer:[B

.field private final bufferLength:I

.field private final decodabet:[B

.field private final encode:Z

.field private lineLength:I

.field private final options:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 1574
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 1575
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 5
    .parameter "out"
    .parameter "options"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1603
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1604
    and-int/lit8 v0, p2, 0x8

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->breakLines:Z

    .line 1605
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->encode:Z

    .line 1606
    iget-boolean v0, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->bufferLength:I

    .line 1607
    iget v0, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->buffer:[B

    .line 1608
    iput v2, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->position:I

    .line 1609
    iput v2, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->lineLength:I

    .line 1610
    iput-boolean v2, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->suspendEncoding:Z

    .line 1611
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->b4:[B

    .line 1612
    iput p2, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->options:I

    .line 1613
    #calls: Lcom/zhangdan/app/util/Base64Utils;->getAlphabet(I)[B
    invoke-static {p2}, Lcom/zhangdan/app/util/Base64Utils;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->alphabet:[B

    .line 1614
    #calls: Lcom/zhangdan/app/util/Base64Utils;->getDecodabet(I)[B
    invoke-static {p2}, Lcom/zhangdan/app/util/Base64Utils;->access$100(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->decodabet:[B

    .line 1615
    return-void

    :cond_0
    move v0, v2

    .line 1604
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1605
    goto :goto_1

    :cond_2
    move v0, v3

    .line 1606
    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1725
    invoke-virtual {p0}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->flushBase64()V

    .line 1729
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 1731
    iput-object v0, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->buffer:[B

    .line 1732
    iput-object v0, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->out:Ljava/io/OutputStream;

    .line 1733
    return-void
.end method

.method public flushBase64()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1704
    iget v0, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->position:I

    if-lez v0, :cond_0

    .line 1705
    iget-boolean v0, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->encode:Z

    if-eqz v0, :cond_1

    .line 1706
    iget-object v0, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->b4:[B

    iget-object v2, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->buffer:[B

    iget v3, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->position:I

    iget v4, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->options:I

    #calls: Lcom/zhangdan/app/util/Base64Utils;->encode3to4([B[BII)[B
    invoke-static {v1, v2, v3, v4}, Lcom/zhangdan/app/util/Base64Utils;->access$400([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1707
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->position:I

    .line 1715
    :cond_0
    return-void

    .line 1710
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeEncoding()V
    .locals 1

    .prologue
    .line 1753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->suspendEncoding:Z

    .line 1754
    return-void
.end method

.method public suspendEncoding()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1742
    invoke-virtual {p0}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->flushBase64()V

    .line 1743
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->suspendEncoding:Z

    .line 1744
    return-void
.end method

.method public write(I)V
    .locals 7
    .parameter "theByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x5

    const/4 v6, 0x0

    .line 1630
    iget-boolean v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->suspendEncoding:Z

    if-eqz v1, :cond_1

    .line 1631
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1670
    :cond_0
    :goto_0
    return-void

    .line 1636
    :cond_1
    iget-boolean v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->encode:Z

    if-eqz v1, :cond_3

    .line 1637
    iget-object v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->buffer:[B

    iget v2, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1638
    iget v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->position:I

    iget v2, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->bufferLength:I

    if-lt v1, v2, :cond_0

    .line 1640
    iget-object v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->b4:[B

    iget-object v3, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->buffer:[B

    iget v4, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->bufferLength:I

    iget v5, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->options:I

    #calls: Lcom/zhangdan/app/util/Base64Utils;->encode3to4([B[BII)[B
    invoke-static {v2, v3, v4, v5}, Lcom/zhangdan/app/util/Base64Utils;->access$400([B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1642
    iget v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->lineLength:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->lineLength:I

    .line 1643
    iget-boolean v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->breakLines:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->lineLength:I

    const/16 v2, 0x4c

    if-lt v1, v2, :cond_2

    .line 1644
    iget-object v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1645
    iput v6, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->lineLength:I

    .line 1648
    :cond_2
    iput v6, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->position:I

    goto :goto_0

    .line 1655
    :cond_3
    iget-object v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-le v1, v3, :cond_4

    .line 1656
    iget-object v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->buffer:[B

    iget v2, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1657
    iget v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->position:I

    iget v2, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->bufferLength:I

    if-lt v1, v2, :cond_0

    .line 1659
    iget-object v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->buffer:[B

    iget-object v2, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->b4:[B

    iget v3, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->options:I

    #calls: Lcom/zhangdan/app/util/Base64Utils;->decode4to3([BI[BII)I
    invoke-static {v1, v6, v2, v6, v3}, Lcom/zhangdan/app/util/Base64Utils;->access$300([BI[BII)I

    move-result v0

    .line 1660
    .local v0, len:I
    iget-object v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->b4:[B

    invoke-virtual {v1, v2, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1662
    iput v6, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->position:I

    goto :goto_0

    .line 1665
    .end local v0           #len:I
    :cond_4
    iget-object v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-eq v1, v3, :cond_0

    .line 1666
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid character in Base64 data."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write([BII)V
    .locals 2
    .parameter "theBytes"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1688
    iget-boolean v1, p0, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->suspendEncoding:Z

    if-eqz v1, :cond_1

    .line 1689
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1697
    :cond_0
    return-void

    .line 1693
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1694
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/util/Base64Utils$OutputStream;->write(I)V

    .line 1693
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
