.class final Lcom/tencent/mm/sdk/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/sdk/a/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/sdk/a/f;-><init>(Landroid/content/Context;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/tencent/mm/sdk/a/f;->c:Z

    iput-object p1, p0, Lcom/tencent/mm/sdk/a/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mm/sdk/a/f;->b:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/tencent/mm/sdk/a/f;->c:Z

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/tencent/mm/sdk/a/f;->c:Z

    if-nez v2, :cond_0

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "ignore wechat app signature validation"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/sdk/a/f;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-boolean v2, p0, Lcom/tencent/mm/sdk/a/f;->c:Z

    if-nez v2, :cond_1

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "ignore wechat app signature validation"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MicroMsg.SDK.WXApiImplV10"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "check signature:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/sdk/platformtools/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "308202eb30820254a00302010202044d36f7a4300d06092a864886f70d01010505003081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e74301e170d3131303131393134333933325a170d3431303131313134333933325a3081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e7430819f300d06092a864886f70d010101050003818d0030818902818100c05f34b231b083fb1323670bfbe7bdab40c0c0a6efc87ef2072a1ff0d60cc67c8edb0d0847f210bea6cbfaa241be70c86daf56be08b723c859e52428a064555d80db448cdcacc1aea2501eba06f8bad12a4fa49d85cacd7abeb68945a5cb5e061629b52e3254c373550ee4e40cb7c8ae6f7a8151ccd8df582d446f39ae0c5e930203010001300d06092a864886f70d0101050500038181009c8d9d7f2f908c42081b4c764c377109a8b2c70582422125ce545842d5f520aea69550b6bd8bfd94e987b75a3077eb04ad341f481aac266e89d3864456e69fba13df018acdc168b9a19dfd7ad9d9cc6f6ace57c746515f71234df3a053e33ba93ece5cd0fc15f3e389a3f365588a9fcb439e069d3629cd7732a13fff7b891499"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "pass"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/a/a;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "com.tencent.mm"

    invoke-direct {p0, v1}, Lcom/tencent/mm/sdk/a/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "sendReq failed for wechat app signature check failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "sendReq checkArgs fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/tencent/mm/sdk/a/a;->a(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/tencent/mm/sdk/a/f;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "weixin://sendreq?appid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/sdk/a/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.mm"

    const-string v4, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    invoke-static {v1, v3, v4, v2, v0}, Lcom/tencent/mm/sdk/channel/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "com.tencent.mm"

    invoke-direct {p0, v0}, Lcom/tencent/mm/sdk/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v1, "register app failed for wechat app signature check failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/tencent/mm/sdk/a/f;->b:Ljava/lang/String;

    :cond_1
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "register app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/sdk/a/f;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/sdk/a/f;->a:Landroid/content/Context;

    const-string v1, "com.tencent.mm"

    const-string v2, "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "weixin://registerapp?appid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/sdk/a/f;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/sdk/channel/MMessage;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
