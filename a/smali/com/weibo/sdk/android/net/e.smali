.class final Lcom/weibo/sdk/android/net/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcom/weibo/sdk/android/net/d;


# direct methods
.method constructor <init>(Lcom/weibo/sdk/android/net/d;)V
    .locals 0

    iput-object p1, p0, Lcom/weibo/sdk/android/net/e;->a:Lcom/weibo/sdk/android/net/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
