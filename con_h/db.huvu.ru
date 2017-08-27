;
; BIND data file for local loopback interface
;
$TTL	3600
@	IN	SOA	huvu.ru. support.huvu.ru. (
		     2017071402		; Serial
			   1250		; Refresh
			    130		; Retry
			1209600		; Expire
			   3600 )	; Negative Cache TTL
;
huvu.ru.         IN      NS      ns1.huvu.ru.
huvu.ru.         IN      NS      ns2.huvu.ru.
huvu.ru.         IN      A       188.225.78.9
mail             IN      A       188.225.78.9

ns1.huvu.ru.     IN      A       188.225.78.9
ns2.huvu.ru.     IN      A       188.225.32.17
huvu.ru.         IN      MX      10 mail.huvu.ru.

ftp              IN      CNAME   huvu.ru.
www              IN      CNAME   huvu.ru.
test-app         IN      A       188.225.78.9

huvu.ru.         IN      TXT     "v=spf1 mx a ptr a:include:_spf.google.com -all"
mail._domainkey	 IN	 TXT     "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDkXLRkHetlVGopfgutpO+fU5knNroKILp3lq0HWyrCI1E7EqKqiCnHkioWY1aaHa+gvVP9Xv6rhIguCiHsGXH+fNU47zQuUu08XUyuUHlf7xes0fgGHvDqBiy7sWAI1agBFKeKnzpayKMAIVo/avf8rrCUNFEQFAiQOaSSmAldLwIDAQAB"
_dmarc.huvu.ru.  IN      TXT     "v=DMARC1; p=quarantine; pct=5; rua=mailto:support@huvu.ru"
