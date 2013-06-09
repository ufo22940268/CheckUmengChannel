.class public final Lsdk/c/a/b/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lsdk/c/a/b/b;
.implements Lsdk/c/a/e/a/a;


# instance fields
.field a:Ljava/nio/channels/SocketChannel;

.field b:Z

.field c:J

.field d:Ljava/nio/channels/SelectionKey;

.field e:Ljava/nio/channels/SelectionKey;

.field f:Ljava/nio/channels/Selector;


# direct methods
.method public constructor <init>(Ljava/nio/channels/Selector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsdk/c/a/b/a/a/c;->f:Ljava/nio/channels/Selector;

    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()Ljava/nio/channels/SocketChannel;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lsdk/c/a/b/a/a/c;->a:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsdk/c/a/b/a/a/c;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsdk/c/a/b/a/a/c;->a:Ljava/nio/channels/SocketChannel;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->setSoLinger(ZI)V

    goto :goto_0
.end method

.method final a(Z)V
    .locals 2

    iget-object v0, p0, Lsdk/c/a/b/a/a/c;->e:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsdk/c/a/b/a/a/c;->e:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lsdk/c/a/b/a/a/c;->e:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    if-eqz p1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :goto_1
    iget-object v1, p0, Lsdk/c/a/b/a/a/c;->e:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, -0x5

    goto :goto_1
.end method
