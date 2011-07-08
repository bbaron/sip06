<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ include file="/WEB-INF/jsp/skin/init.jspf" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<c:set var="baseGoogleUrl" value="http://ajax.googleapis.com/ajax/libs" />
<c:set var="baseSipUrl" value="http://sipskin.s3.amazonaws.com" />
<c:set var="sipBookCoverUrl" value="http://sipskin.s3.amazonaws.com/images/sipcover.jpg" />

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title><decorator:title /> - Spring in Practice</title>
		<link rel="stylesheet" type="text/css" href="${baseGoogleUrl}/yui/2.9.0/build/reset-fonts-grids/reset-fonts-grids.css" />
		<link rel="stylesheet" type="text/css" href="${baseGoogleUrl}/yui/2.9.0/build/base/base.css" />
		<link rel="stylesheet" type="text/css" href="${baseSipUrl}/sip.css" />
		<script type="text/javascript" src="${baseGoogleUrl}/jquery/1.6.1/jquery.min.js"></script>
		<script type="text/javascript" src="${baseSipUrl}/sip.js"></script>
		<decorator:head />
	</head>
	<body>
		<div id="doc3">
			<div id="outerHdSubhd">
				<div id="innerHdSubhd">
					<div id="hd">
						<div id="hdTitle"></div>
						<div id="hdAppName"><c:out value="${initParam.appName}" /></div>
					</div>
					<div id="subhd">
						<%@ include file="/WEB-INF/jsp/skin/subhead.jspf" %>
					</div>
				</div>
			</div>
			<div id="bd">
				<div class="regionInner">
					<decorator:body />
				</div>
			</div>
			<div id="ft">
				<div class="regionInner">
					<div class="yui-gc">
						<div id="aboutRecipe" class="yui-u first">
							<h2 style="margin-top:0">About recipe <c:out value="${initParam.recipe}" /></h2>
							<div><c:out value="${initParam.aboutThisRecipe}" escapeXml="false" /></div>
						</div>
						<div id="bookLinks" class="yui-u">
							<div><a href="http://www.manning.com/wheeler/"><img id="book" src="${sipBookCoverUrl}" alt="Spring in Practice" /></a></div>
							<div>
								<a href="http://www.manning.com/wheeler/" title="Discuss the book with the authors and other readers">Spring in Practice @ Manning</a><br />
								<a href="http://springinpractice.com/" title="The book's blog, with elaborations, corrections and more">Spring in Practice Blog</a><br />
								<a href="http://wheelersoftware.com/articles/index.html" title="Java & Spring tutorials by Willie Wheeler">Tutorials @ Wheeler Software</a><br />
							</div>
						</div>
					</div>
					<div id="legal">
						Copyright &copy; 2008-2011 Manning Publications Co.
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
