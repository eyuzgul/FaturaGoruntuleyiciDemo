<?xml version="1.0" encoding="UTF-8"?>
<!--Designed and generated by Altova StyleVision Enterprise Edition 2008 rel. 2 sp2 - see http://www.altova.com/stylevision for more information.-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:ccts="urn:un:unece:uncefact:documentation:2" xmlns:clm54217="urn:un:unece:uncefact:codelist:specification:54217:2001" xmlns:clm5639="urn:un:unece:uncefact:codelist:specification:5639:1988" xmlns:clm66411="urn:un:unece:uncefact:codelist:specification:66411:2001" xmlns:clmIANAMIMEMediaType="urn:un:unece:uncefact:codelist:specification:IANAMIMEMediaType:2003" xmlns:ext="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:n1="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" xmlns:qdt="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDatatypes-2" xmlns:udt="urn:un:unece:uncefact:data:specification:UnqualifiedDataTypesSchemaModule:2" xmlns:xdt="http://www.w3.org/2005/xpath-datatypes" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:altova="http://www.altova.com">
	<xsl:output version="4.0" method="html" indent="no" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.0 Transitional//EN" doctype-system="http://www.w3.org/TR/html4/loose.dtd"/>
	<xsl:param name="SV_OutputFormat" select="'HTML'"/>
	<xsl:variable name="XML" select="/"/>
	<xsl:import-schema schema-location="os-UBL-2.0-TR\xsd\maindoc\UBL-Invoice-2.0.xsd" namespace="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2"/>
	<xsl:template match="/">
		<html>
			<head>
				<title/>
				<style type="text/css">
					<xsl:comment>@import  url("e-invoceTR.css");</xsl:comment>
				</style>
				<link rel="Stylesheet" type="text/css" href="e-invoceTR.css">  </link>
			</head>
			<body>
				<br/>
				<div>
					<table align="center" border="0" width="400">
						<tbody>
							<tr>
								<td width="400">
									<xsl:for-each select="$XML">
										<img>
											<xsl:attribute name="src">
												<xsl:if test="substring(string(&apos;logo.jpg&apos;), 2, 1) = ':'">
													<xsl:text>file:///</xsl:text>
												</xsl:if>
												<xsl:value-of select="translate(string(&apos;logo.jpg&apos;), '&#x5c;', '/')"/>
											</xsl:attribute>
											<xsl:attribute name="alt">
												<xsl:value-of select="string('Base64 encoded image (IE desteklemez)')"/>
											</xsl:attribute>
										</img>
									</xsl:for-each>
								</td>
								<td align="right">
									<h1>
										<span>
											<xsl:text>FATURA/INVOICE</xsl:text>
										</span>
									</h1>
								</td>
							</tr>
							<tr>
								<td colspan="2" height="19" width="800">
									<hr/>
								</td>
							</tr>
							<tr>
								<td valign="top" width="400">
									<h2>
										<span>
											<xsl:text>SatIcI Bİlgİlerİ</xsl:text>
										</span>
									</h2>
									<div>
										<table border="0">
											<tbody>
												<tr>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:AccountingSupplierParty">
																<xsl:for-each select="cac:Party">
																	<td>
																		<xsl:for-each select="cac:PartyIdentification">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:AccountingSupplierParty">
																<xsl:for-each select="cac:Party">
																	<td>
																		<xsl:for-each select="cac:PartyName">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:AccountingSupplierParty">
																<xsl:for-each select="cac:Party">
																	<td>
																		<xsl:for-each select="cac:PostalAddress">
																			<xsl:for-each select="cac:AddressLine">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																			<span>
																				<xsl:text>/</xsl:text>
																			</span>
																			<xsl:for-each select="cac:Country">
																				<xsl:for-each select="cbc:Name">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</td>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:AccountingSupplierParty">
																<xsl:for-each select="cac:Party">
																	<td>
																		<xsl:for-each select="cbc:WebsiteURI">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:AccountingSupplierParty">
																<xsl:for-each select="cac:Party">
																	<td>
																		<xsl:for-each select="cac:Contact">
																			<table border="0">
																				<tbody>
																					<tr>
																						<td>
																							<xsl:for-each select="cbc:Telephone">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</td>
																					</tr>
																					<tr>
																						<td width="202">
																							<xsl:for-each select="cbc:Telefax">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</td>
																					</tr>
																					<tr>
																						<td width="202">
																							<xsl:for-each select="cbc:ElectronicMail">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<xsl:for-each select="cac:OtherCommunication">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</td>
																					</tr>
																				</tbody>
																			</table>
																		</xsl:for-each>
																	</td>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:AccountingSupplierParty">
																<xsl:for-each select="cac:Party">
																	<td>
																		<xsl:for-each select="cac:Person">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
											</tbody>
										</table>
									</div>
								</td>
								<td height="19" rowspan="2" valign="top" width="400">
									<h2>
										<span>
											<xsl:text>Fatura Bİlgİlerİ</xsl:text>
										</span>
									</h2>
									<div>
										<table border="0" width="400">
											<tbody>
												<tr>
													<th valign="top" width="125">
														<h3>
															<span>
																<xsl:text>Sıra No:</xsl:text>
															</span>
														</h3>
													</th>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<td valign="top">
																<xsl:for-each select="cbc:ID">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<th valign="top" width="125">
														<h3>
															<span>
																<xsl:text>Nüsha:</xsl:text>
															</span>
														</h3>
													</th>
													<td valign="top">
														<xsl:choose>
															<xsl:when test="$XML/n1:Invoice/cbc:CopyIndicator  = true()">
																<span>
																	<xsl:text>Kopya</xsl:text>
																</span>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>Gerçek</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
												</tr>
												<tr>
													<th valign="top" width="125">
														<h3>
															<span>
																<xsl:text>Düzenleme Tarihi:</xsl:text>
															</span>
														</h3>
													</th>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<td valign="top">
																<xsl:for-each select="cbc:IssueDate">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<th valign="top" width="125">
														<h3>
															<span>
																<xsl:text>Fatura Tipi:</xsl:text>
															</span>
														</h3>
													</th>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<td valign="top">
																<xsl:for-each select="cbc:InvoiceTypeCode">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<th valign="top" width="125">
														<h3>
															<span>
																<xsl:text>Açıklama:</xsl:text>
															</span>
														</h3>
													</th>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<td valign="top">
																<xsl:for-each select="cbc:Note">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<th valign="top" width="125">
														<h3>
															<span>
																<xsl:text>Kalem Sayısı:</xsl:text>
															</span>
														</h3>
													</th>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<td valign="top">
																<xsl:for-each select="cbc:LineCountNumeric">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<th valign="top" width="125">
														<h3>
															<span>
																<xsl:text>Ödeme Şekli:</xsl:text>
															</span>
														</h3>
													</th>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<td valign="top">
																<xsl:for-each select="cac:PaymentMeans">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<th valign="top" width="125">
														<h3>
															<span>
																<xsl:text>Ödeme Koşulları:</xsl:text>
															</span>
														</h3>
													</th>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<td valign="top">
																<xsl:for-each select="cac:PaymentTerms">
																	<xsl:for-each select="cbc:Note">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
											</tbody>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top" width="400">
									<h2>
										<span>
											<xsl:text>AlIcI Bİlgİlerİ</xsl:text>
										</span>
									</h2>
									<div>
										<table border="0" width="400">
											<tbody>
												<tr>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:AccountingCustomerParty">
																<xsl:for-each select="cac:Party">
																	<td>
																		<xsl:for-each select="cac:PartyIdentification">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:AccountingCustomerParty">
																<xsl:for-each select="cac:Party">
																	<td>
																		<xsl:for-each select="cac:PartyName">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:AccountingCustomerParty">
																<xsl:for-each select="cac:Party">
																	<td>
																		<xsl:for-each select="cac:PostalAddress">
																			<xsl:for-each select="cac:AddressLine">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																			<span>
																				<xsl:text>/</xsl:text>
																			</span>
																			<xsl:for-each select="cac:Country">
																				<xsl:for-each select="cbc:Name">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</td>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:AccountingCustomerParty">
																<xsl:for-each select="cac:Party">
																	<td>
																		<xsl:for-each select="cbc:WebsiteURI">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:AccountingCustomerParty">
																<xsl:for-each select="cac:Party">
																	<td>
																		<xsl:for-each select="cac:Contact">
																			<table border="0">
																				<tbody>
																					<tr>
																						<td>
																							<xsl:for-each select="cbc:Telephone">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<xsl:for-each select="cbc:Telefax">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<xsl:for-each select="cbc:ElectronicMail">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<xsl:for-each select="cac:OtherCommunication">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</td>
																					</tr>
																				</tbody>
																			</table>
																		</xsl:for-each>
																	</td>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:AccountingCustomerParty">
																<xsl:for-each select="cac:Party">
																	<td>
																		<xsl:for-each select="cac:Person">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
											</tbody>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2" height="19" width="800">
									<hr/>
								</td>
							</tr>
							<tr>
								<td colspan="2" width="800">
									<h2>
										<span>
											<xsl:text>Ürün/Hİzmet Kalemlerİ</xsl:text>
										</span>
									</h2>
									<div>
										<table border="1" width="800">
											<thead>
												<tr>
													<th>
														<h3>
															<span>
																<xsl:text>ID</xsl:text>
															</span>
														</h3>
													</th>
													<th>
														<h3>
															<span>
																<xsl:text>Ürün/Hizmet</xsl:text>
															</span>
														</h3>
													</th>
													<th>
														<h3>
															<span>
																<xsl:text>Tanım</xsl:text>
															</span>
														</h3>
													</th>
													<th align="right">
														<h3 align="right">
															<span>
																<xsl:text>Miktar</xsl:text>
															</span>
														</h3>
													</th>
													<th align="right">
														<h3 align="right">
															<span>
																<xsl:text>İskonto</xsl:text>
															</span>
														</h3>
													</th>
													<th align="right">
														<h3 align="right">
															<span>
																<xsl:text>Fiyat</xsl:text>
															</span>
														</h3>
													</th>
													<th align="right">
														<h3 align="right">
															<span>
																<xsl:text>Vergi</xsl:text>
															</span>
														</h3>
													</th>
													<th align="right">
														<h3 align="right">
															<span>
																<xsl:text>Vergi Dahil Fiyat</xsl:text>
															</span>
														</h3>
													</th>
												</tr>
											</thead>
											<tbody>
												<xsl:for-each select="$XML">
													<xsl:for-each select="n1:Invoice">
														<xsl:for-each select="cac:InvoiceLine">
															<tr>
																<td>
																	<xsl:for-each select="cbc:ID">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="cac:Item">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="cbc:Note">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td align="right">
																	<xsl:for-each select="cbc:InvoicedQuantity">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td align="right">
																	<xsl:for-each select="cac:AllowanceCharge">
																		<xsl:for-each select="cbc:Amount">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:for-each>
																	<xsl:for-each select="cac:AllowanceCharge">
																		<xsl:for-each select="cbc:Amount">
																			<xsl:for-each select="@currencyID">
																				<span>
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
																<td align="right">
																	<xsl:for-each select="cbc:LineExtensionAmount">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<xsl:for-each select="cbc:LineExtensionAmount">
																		<xsl:for-each select="@currencyID">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
																<td align="right">
																	<xsl:for-each select="cac:TaxTotal">
																		<xsl:for-each select="cbc:TaxAmount">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:for-each>
																	<xsl:for-each select="cac:TaxTotal">
																		<xsl:for-each select="cbc:TaxAmount">
																			<xsl:for-each select="@currencyID">
																				<span>
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
																<td align="right">
																	<xsl:for-each select="cac:Price">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<xsl:for-each select="cac:Price">
																		<xsl:for-each select="cbc:PriceAmount">
																			<xsl:for-each select="@currencyID">
																				<span>
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
															</tr>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</tbody>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2" height="19" width="800">
									<hr/>
								</td>
							</tr>
							<tr>
								<td colspan="2" width="800">
									<h2>
										<span>
											<xsl:text>Genel Toplam</xsl:text>
										</span>
									</h2>
									<div>
										<table border="1" width="800">
											<tbody>
												<tr>
													<th>
														<h3>
															<span>
																<xsl:text>Vergiler Hariç, İskonto Dahil Toplam</xsl:text>
															</span>
														</h3>
													</th>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:LegalMonetaryTotal">
																<td align="right">
																	<xsl:for-each select="cbc:LineExtensionAmount">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<xsl:for-each select="cbc:LineExtensionAmount">
																		<xsl:for-each select="@currencyID">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<th>
														<h3>
															<span>
																<xsl:text>Vergiler Hariç Toplam</xsl:text>
															</span>
														</h3>
													</th>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:LegalMonetaryTotal">
																<td align="right">
																	<xsl:for-each select="cbc:TaxExclusiveAmount">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<xsl:for-each select="cbc:TaxExclusiveAmount">
																		<xsl:for-each select="@currencyID">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<th>
														<h3>
															<span>
																<xsl:text>Vergiler Dahil Toplam</xsl:text>
															</span>
														</h3>
													</th>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:LegalMonetaryTotal">
																<td align="right">
																	<xsl:for-each select="cbc:TaxInclusiveAmount">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<xsl:for-each select="cbc:TaxInclusiveAmount">
																		<xsl:for-each select="@currencyID">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<th>
														<h3>
															<span>
																<xsl:text>İskonto Toplam</xsl:text>
															</span>
														</h3>
													</th>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:LegalMonetaryTotal">
																<td align="right">
																	<xsl:for-each select="cbc:AllowanceTotalAmount">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<xsl:for-each select="cbc:AllowanceTotalAmount">
																		<xsl:for-each select="@currencyID">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<th>
														<h3>
															<span>
																<xsl:text>Net Toplam</xsl:text>
															</span>
														</h3>
													</th>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:LegalMonetaryTotal">
																<td align="right">
																	<xsl:for-each select="cbc:ChargeTotalAmount">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<xsl:for-each select="cbc:ChargeTotalAmount">
																		<xsl:for-each select="@currencyID">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<th>
														<h3>
															<span>
																<xsl:text>Yuvarlanan Miktar</xsl:text>
															</span>
														</h3>
													</th>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:LegalMonetaryTotal">
																<td align="right">
																	<xsl:for-each select="cbc:PayableRoundingAmount">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<xsl:for-each select="cbc:PayableRoundingAmount">
																		<xsl:for-each select="@currencyID">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
												<tr>
													<th align="left">
														<h4>
															<span>
																<xsl:text>Ödenecek Tutar</xsl:text>
															</span>
														</h4>
													</th>
													<xsl:for-each select="$XML">
														<xsl:for-each select="n1:Invoice">
															<xsl:for-each select="cac:LegalMonetaryTotal">
																<td align="right">
																	<h4 align="right">
																		<xsl:for-each select="cbc:PayableAmount">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																		<xsl:for-each select="cbc:PayableAmount">
																			<xsl:for-each select="@currencyID">
																				<span>
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:for-each>
																	</h4>
																</td>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tr>
											</tbody>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2" width="800"/>
							</tr>
							<tr>
								<td colspan="2" height="25" width="800">
									<hr/>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
