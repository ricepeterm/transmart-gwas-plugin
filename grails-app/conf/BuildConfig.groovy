grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
//grails.project.war.file = "target/${appName}-${appVersion}.war"

grails.project.dependency.resolver = "maven"

grails.project.dependency.resolution = {
    // inherit Grails' default dependencies
    inherits("global") {
        // uncomment to disable ehcache
        // excludes 'ehcache'
    }
    log "warn" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
	legacyResolve false
    repositories {
        mavenRepo "file://${System.getProperty('user.home')}/m2local/etriksv3"
        mavenLocal()
        grailsCentral()
        mavenCentral()

        mavenRepo "https://repo.transmartfoundation.org/content/repositories/public/"
        mavenRepo "https://repo.thehyve.nl/content/repositories/public/"
    }
    dependencies {
    	// needed to support folder-management
        compile 'org.codehaus.groovy.modules.http-builder:http-builder:0.7.1'
    }
    plugins {
		compile(':resources:1.2.1')
		//// already included in biomart-domain
                //compile(':transmart-java:16.1')
		//// already included in search-domain
                //compile(':biomart-domain:16.1')
		//// already included in folder-management
                //compile(':search-domain:16.1')
		compile(':folder-management:16.1.30')
		//// already included in folder-management
                //compile(':transmart-legacy-db:16.1')
		compile(':spring-security-core:2.0-RC5')
		compile(':quartz:1.0-RC2')
        compile(':mail:1.0')
		build(":release:3.1.1")

    }
}
